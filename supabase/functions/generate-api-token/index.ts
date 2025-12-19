import { serve } from "https://deno.land/std@0.168.0/http/server.ts";
import { createClient } from 'https://esm.sh/@supabase/supabase-js@2.79.0';

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
};

// Generate a secure random token
function generateToken(): string {
  const array = new Uint8Array(32);
  crypto.getRandomValues(array);
  const hex = Array.from(array).map(b => b.toString(16).padStart(2, '0')).join('');
  return `vp_${hex}`;
}

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

    // Verify the requesting user
    const authHeader = req.headers.get('Authorization')!;
    const token = authHeader.replace('Bearer ', '');
    const { data: { user }, error: userError } = await supabaseAdmin.auth.getUser(token);

    if (userError || !user) {
      throw new Error('Unauthorized');
    }

    const { franquiaId } = await req.json();

    if (!franquiaId) {
      throw new Error('franquiaId is required');
    }

    // Verify user owns this franquia or is admin
    const { data: userRoles } = await supabaseAdmin
      .from('user_roles')
      .select('role')
      .eq('user_id', user.id);

    const isSuperAdmin = userRoles?.some(r => r.role === 'super_admin');
    const isMasterRegional = userRoles?.some(r => r.role === 'master_regional');
    const isFranquia = userRoles?.some(r => r.role === 'franquia');

    // Check if this is the user's own franquia
    const { data: franquia } = await supabaseAdmin
      .from('franquias')
      .select('id, email')
      .eq('id', franquiaId)
      .single();

    if (!franquia) {
      throw new Error('Franquia not found');
    }

    // Only allow if user owns this franquia or is admin
    const ownsThisFranquia = franquia.email === user.email;
    if (!isSuperAdmin && !isMasterRegional && !(isFranquia && ownsThisFranquia)) {
      throw new Error('Permission denied');
    }

    // Generate new token
    const newToken = generateToken();

    // Update franquia with new token
    const { error: updateError } = await supabaseAdmin
      .from('franquias')
      .update({ api_token: newToken })
      .eq('id', franquiaId);

    if (updateError) {
      console.error('Update error:', updateError);
      throw new Error('Failed to update token');
    }

    console.log('Generated new API token for franquia:', franquiaId);

    return new Response(
      JSON.stringify({ success: true, token: newToken }),
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
