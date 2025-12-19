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

    const { email, newPassword } = await req.json();

    if (!email || !newPassword) {
      throw new Error('Email and newPassword are required');
    }

    if (newPassword.length < 6) {
      throw new Error('Password must be at least 6 characters');
    }

    // Find user by email using getUserByEmail (more efficient and reliable)
    const { data: userListData, error: listError } = await supabaseAdmin.auth.admin.listUsers({
      perPage: 1000
    });

    if (listError) {
      console.error('Error listing users:', listError);
      throw new Error('Failed to search for user: ' + listError.message);
    }

    let targetUser = userListData?.users?.find(u => u.email?.toLowerCase() === email.toLowerCase());
    let userCreated = false;

    if (!targetUser) {
      // User doesn't exist in Auth - create it automatically
      console.log('User not found, creating new user for:', email);

      const { data: newUser, error: createError } = await supabaseAdmin.auth.admin.createUser({
        email: email,
        password: newPassword,
        email_confirm: true, // Auto-confirm email
      });

      if (createError) {
        console.error('Error creating user:', createError);
        throw new Error('Erro ao criar usuário: ' + createError.message);
      }

      targetUser = newUser.user;
      userCreated = true;
      console.log('User created successfully:', email);

      // Find the franquia to determine the role
      const { data: franquia } = await supabaseAdmin
        .from('franquias')
        .select('id')
        .eq('email', email)
        .single();

      const { data: masterRegional } = await supabaseAdmin
        .from('master_regionais')
        .select('id')
        .eq('email', email)
        .single();

      // Assign appropriate role
      if (franquia) {
        await supabaseAdmin.from('user_roles').insert({
          user_id: targetUser!.id,
          role: 'franquia'
        });

        // Link user to franquia in user_entities
        await supabaseAdmin.from('user_entities').insert({
          user_id: targetUser!.id,
          entity_type: 'franquia',
          entity_id: franquia.id
        });

        console.log('Assigned franquia role to user:', email);
      } else if (masterRegional) {
        await supabaseAdmin.from('user_roles').insert({
          user_id: targetUser!.id,
          role: 'master_regional'
        });

        // Link user to master_regional in user_entities
        await supabaseAdmin.from('user_entities').insert({
          user_id: targetUser!.id,
          entity_type: 'master_regional',
          entity_id: masterRegional.id
        });

        console.log('Assigned master_regional role to user:', email);
      }
    } else {
      // User exists, just update the password
      const { error: updateError } = await supabaseAdmin.auth.admin.updateUserById(
        targetUser.id,
        { password: newPassword }
      );

      if (updateError) throw updateError;
      console.log('Password updated for user:', email);
    }

    const message = userCreated
      ? 'Usuário criado e senha definida com sucesso!'
      : 'Senha atualizada com sucesso!';

    return new Response(
      JSON.stringify({ success: true, message, userCreated }),
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
