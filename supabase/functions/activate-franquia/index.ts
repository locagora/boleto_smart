import { serve } from "https://deno.land/std@0.168.0/http/server.ts";
import { createClient } from 'https://esm.sh/@supabase/supabase-js@2.79.0';

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type, x-webhook-secret',
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

    // Verificar secret do webhook (opcional, mas recomendado para segurança)
    const webhookSecret = req.headers.get('x-webhook-secret');
    const expectedSecret = Deno.env.get('WEBHOOK_ACTIVATION_SECRET');

    // Se o secret estiver configurado, verificar
    if (expectedSecret && webhookSecret !== expectedSecret) {
      throw new Error('Invalid webhook secret');
    }

    const body = await req.json();

    // Aceita diferentes formatos de payload
    // Formato 1: { cnpj: "12345678901234" }
    // Formato 2: { email: "franquia@email.com" }
    // Formato 3: { franquia_id: "uuid" }
    const { cnpj, email, franquia_id } = body;

    if (!cnpj && !email && !franquia_id) {
      throw new Error('É necessário fornecer cnpj, email ou franquia_id');
    }

    let query = supabaseAdmin.from('franquias').select('id, nome, email, cnpj, ativo');

    if (franquia_id) {
      query = query.eq('id', franquia_id);
    } else if (cnpj) {
      // Remove caracteres não numéricos do CNPJ
      const cleanCnpj = cnpj.replace(/\D/g, '');
      query = query.eq('cnpj', cleanCnpj);
    } else if (email) {
      query = query.eq('email', email);
    }

    const { data: franquia, error: findError } = await query.maybeSingle();

    if (findError) throw findError;

    if (!franquia) {
      throw new Error('Franquia não encontrada');
    }

    if (franquia.ativo) {
      return new Response(
        JSON.stringify({
          success: true,
          message: 'Franquia já está ativa',
          franquia: { id: franquia.id, nome: franquia.nome }
        }),
        { headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
      );
    }

    // Ativar a franquia
    const { error: updateError } = await supabaseAdmin
      .from('franquias')
      .update({ ativo: true })
      .eq('id', franquia.id);

    if (updateError) throw updateError;

    console.log('Franquia ativada com sucesso:', franquia.id, franquia.nome);

    return new Response(
      JSON.stringify({
        success: true,
        message: 'Franquia ativada com sucesso',
        franquia: { id: franquia.id, nome: franquia.nome, email: franquia.email }
      }),
      { headers: { ...corsHeaders, 'Content-Type': 'application/json' } }
    );

  } catch (error) {
    const errorMessage = error instanceof Error ? error.message : 'Erro desconhecido';
    console.error('Erro ao ativar franquia:', errorMessage);

    return new Response(
      JSON.stringify({ success: false, error: errorMessage }),
      {
        status: 400,
        headers: { ...corsHeaders, 'Content-Type': 'application/json' }
      }
    );
  }
});
