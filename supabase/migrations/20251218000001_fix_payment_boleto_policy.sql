-- Ajustar política de inserção para Franquias na tabela payment_boleto
-- Usar get_user_franquia_ids() (plural) é mais seguro pois abrange user_entities
DROP POLICY IF EXISTS "Franquias can insert their own payment_boleto" ON public.payment_boleto;

CREATE POLICY "Franquias can insert their own payment_boleto"
  ON public.payment_boleto FOR INSERT
  WITH CHECK (
    has_role(auth.uid(), 'franquia'::app_role) 
    AND franquia_id IN (SELECT get_user_franquia_ids())
  );

-- Garantir que as permissões de SELECT estejam corretas
DROP POLICY IF EXISTS "Franquias can view own payment_boleto" ON public.payment_boleto;

CREATE POLICY "Franquias can view own payment_boleto"
  ON public.payment_boleto FOR SELECT
  USING (
    franquia_id IN (SELECT get_user_franquia_ids())
  );

-- Verificação simples
SELECT 'Políticas de payment_boleto atualizadas com sucesso!' as status;
