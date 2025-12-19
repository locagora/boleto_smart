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

    // Check if user is super_admin or master_regional
    const { data: userRoles } = await supabaseAdmin
      .from('user_roles')
      .select('role')
      .eq('user_id', user.id);

    const isSuperAdmin = userRoles?.some(r => r.role === 'super_admin');
    const isMasterRegional = userRoles?.some(r => r.role === 'master_regional');

    if (!isSuperAdmin && !isMasterRegional) {
      throw new Error('Insufficient permissions');
    }

    const { email, password, role, userData } = await req.json();

    // Master Regionals can only create franquia users
    if (isMasterRegional && !isSuperAdmin && role !== 'franquia') {
      throw new Error('Master Regionals can only create franchise users');
    }

    let userId: string;

    // Try to get existing user by email
    const { data: { users }, error: getUserError } = await supabaseAdmin.auth.admin.listUsers();
    const existingUser = users?.find(u => u.email === email);

    if (existingUser) {
      // User already exists, just use their ID
      userId = existingUser.id;
      console.log('User already exists:', email, 'ID:', userId);
    } else {
      // Create new user
      const { data: newUser, error: createError } = await supabaseAdmin.auth.admin.createUser({
        email,
        password,
        email_confirm: true,
      });

      if (createError) throw createError;
      if (!newUser.user) throw new Error('Failed to create user');
      
      userId = newUser.user.id;
      console.log('Created new user:', email, 'ID:', userId);
    }

    // Check if role already exists
    const { data: existingRole } = await supabaseAdmin
      .from('user_roles')
      .select('id')
      .eq('user_id', userId)
      .eq('role', role)
      .maybeSingle();

    // Assign role if not exists
    if (!existingRole) {
      const { error: roleError } = await supabaseAdmin
        .from('user_roles')
        .insert({
          user_id: userId,
          role: role,
        });

      if (roleError) throw roleError;
      console.log('Assigned role:', role, 'to user:', userId);
    } else {
      console.log('User already has role:', role);
    }

    return new Response(
      JSON.stringify({ success: true, userId: userId }),
      { headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
    );

  } catch (error) {
    const errorMessage = error instanceof Error ? error.message : 'Unknown error';
    return new Response(
      JSON.stringify({ error: errorMessage }),
      { 
        status: 400,
        headers: { ...corsHeaders, 'Content-Type': 'application/json' }
      }
    );
  }
});