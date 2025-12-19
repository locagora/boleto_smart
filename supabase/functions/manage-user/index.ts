import { serve } from "https://deno.land/std@0.168.0/http/server.ts";
import { createClient } from 'https://esm.sh/@supabase/supabase-js@2.79.0';

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
};

serve(async (req) => {
  if (req.method === 'OPTIONS') {
    return new Response('ok', { headers: corsHeaders });
  }

  try {
    const supabaseAdmin = createClient(
      Deno.env.get('SUPABASE_URL') ?? '',
      Deno.env.get('SUPABASE_SERVICE_ROLE_KEY') ?? '',
      {
        auth: {
          autoRefreshToken: false,
          persistSession: false
        }
      }
    );

    // Verify the requesting user has appropriate permissions
    const authHeader = req.headers.get('Authorization')!;
    const token = authHeader.replace('Bearer ', '');
    const { data: { user }, error: userError } = await supabaseAdmin.auth.getUser(token);

    if (userError || !user) {
      throw new Error('Unauthorized');
    }

    // Check if user is super_admin
    const { data: userRoles } = await supabaseAdmin
      .from('user_roles')
      .select('role')
      .eq('user_id', user.id);

    const isSuperAdmin = userRoles?.some(r => r.role === 'super_admin');

    if (!isSuperAdmin) {
      throw new Error('Insufficient permissions - Super Admin only');
    }

    const body = await req.json();
    const { action, userId } = body;

    if (!action || !userId) {
      throw new Error('Missing required parameters: action and userId');
    }

    // Prevent super admin from deleting/blocking themselves
    if (userId === user.id) {
      throw new Error('You cannot perform this action on your own account');
    }

    let result: any;

    switch (action) {
      case 'delete':
        // Delete user from auth
        const { error: deleteError } = await supabaseAdmin.auth.admin.deleteUser(userId);
        if (deleteError) throw deleteError;
        result = { success: true, message: 'User deleted successfully' };
        break;

      case 'block':
        // Ban user (set ban_duration to a very long time - effectively permanent)
        const { error: banError } = await supabaseAdmin.auth.admin.updateUserById(
          userId,
          { ban_duration: '876000h' } // ~100 years
        );
        if (banError) throw banError;
        result = { success: true, message: 'User blocked successfully' };
        break;

      case 'unblock':
        // Unban user
        const { error: unbanError } = await supabaseAdmin.auth.admin.updateUserById(
          userId,
          { ban_duration: 'none' }
        );
        if (unbanError) throw unbanError;
        result = { success: true, message: 'User unblocked successfully' };
        break;

      default:
        throw new Error(`Invalid action: ${action}. Valid actions: delete, block, unblock`);
    }

    return new Response(
      JSON.stringify(result),
      { headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
    );

  } catch (error) {
    const errorMessage = error instanceof Error ? error.message : 'Unknown error';
    console.error('Error in manage-user:', errorMessage);
    return new Response(
      JSON.stringify({ error: errorMessage }),
      {
        status: 400,
        headers: { ...corsHeaders, 'Content-Type': 'application/json' }
      }
    );
  }
});
