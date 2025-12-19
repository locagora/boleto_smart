-- Políticas RLS para permitir busca pública de boletos por CPF/CNPJ
-- Isso permite que qualquer pessoa busque suas cobranças sem estar logada

-- Política para permitir busca pública de clientes por CPF/CNPJ
DROP POLICY IF EXISTS "Public can search customers by cpf_cnpj" ON customers;
CREATE POLICY "Public can search customers by cpf_cnpj"
ON customers
FOR SELECT
TO anon
USING (true);

-- Política para permitir busca pública de pagamentos pendentes/vencidos
DROP POLICY IF EXISTS "Public can view pending payments" ON payments;
CREATE POLICY "Public can view pending payments"
ON payments
FOR SELECT
TO anon
USING (status IN ('PENDING', 'OVERDUE'));

-- Verificação
SELECT 'Políticas de busca pública criadas!' as status;
