-- Criar tabela de associação de usuários com entidades (múltiplos usuários por entidade)
CREATE TABLE IF NOT EXISTS public.user_entities (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,
    entity_type TEXT NOT NULL CHECK (entity_type IN ('master_regional', 'franquia')),
    entity_id UUID NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE (user_id, entity_type, entity_id)
);

-- Enable RLS
ALTER TABLE public.user_entities ENABLE ROW LEVEL SECURITY;

-- Criar índices para melhor performance
CREATE INDEX IF NOT EXISTS idx_user_entities_user_id ON public.user_entities(user_id);
CREATE INDEX IF NOT EXISTS idx_user_entities_entity ON public.user_entities(entity_type, entity_id);

-- Políticas RLS

-- Usuários podem ver suas próprias associações
DROP POLICY IF EXISTS "Users can view their own entity associations" ON public.user_entities;
CREATE POLICY "Users can view their own entity associations"
ON public.user_entities
FOR SELECT
TO authenticated
USING (auth.uid() = user_id);

-- Super admins podem ver todas as associações
DROP POLICY IF EXISTS "Super admins can view all entity associations" ON public.user_entities;
CREATE POLICY "Super admins can view all entity associations"
ON public.user_entities
FOR SELECT
TO authenticated
USING (
    EXISTS (
        SELECT 1 FROM public.user_roles
        WHERE user_id = auth.uid() AND role = 'super_admin'
    )
);

-- Super admins podem gerenciar todas as associações
DROP POLICY IF EXISTS "Super admins can manage entity associations" ON public.user_entities;
CREATE POLICY "Super admins can manage entity associations"
ON public.user_entities
FOR ALL
TO authenticated
USING (
    EXISTS (
        SELECT 1 FROM public.user_roles
        WHERE user_id = auth.uid() AND role = 'super_admin'
    )
);

-- Master regionais podem ver associações das suas franquias
DROP POLICY IF EXISTS "Master regionals can view their franchise associations" ON public.user_entities;
CREATE POLICY "Master regionals can view their franchise associations"
ON public.user_entities
FOR SELECT
TO authenticated
USING (
    entity_type = 'franquia' AND
    EXISTS (
        SELECT 1 FROM public.franquias f
        JOIN public.user_entities ue ON ue.entity_type = 'master_regional' AND ue.entity_id = f.master_regional_id
        WHERE f.id = public.user_entities.entity_id AND ue.user_id = auth.uid()
    )
);

-- Migrar dados existentes baseados em email
-- Associar usuários a master_regionais baseado no email
INSERT INTO public.user_entities (user_id, entity_type, entity_id)
SELECT DISTINCT ur.user_id, 'master_regional', mr.id
FROM public.user_roles ur
JOIN auth.users u ON u.id = ur.user_id
JOIN public.master_regionais mr ON mr.email = u.email
WHERE ur.role = 'master_regional'
ON CONFLICT (user_id, entity_type, entity_id) DO NOTHING;

-- Associar usuários a franquias baseado no email
INSERT INTO public.user_entities (user_id, entity_type, entity_id)
SELECT DISTINCT ur.user_id, 'franquia', f.id
FROM public.user_roles ur
JOIN auth.users u ON u.id = ur.user_id
JOIN public.franquias f ON f.email = u.email
WHERE ur.role = 'franquia'
ON CONFLICT (user_id, entity_type, entity_id) DO NOTHING;

-- Função helper para verificar se usuário está associado a uma entidade
CREATE OR REPLACE FUNCTION public.user_has_entity_access(
    _user_id UUID,
    _entity_type TEXT,
    _entity_id UUID
)
RETURNS BOOLEAN
LANGUAGE sql
STABLE
SECURITY DEFINER
SET search_path = public
AS $$
    SELECT EXISTS (
        SELECT 1
        FROM public.user_entities
        WHERE user_id = _user_id
          AND entity_type = _entity_type
          AND entity_id = _entity_id
    )
$$;

-- Função para obter entidades do usuário
CREATE OR REPLACE FUNCTION public.get_user_entities(_user_id UUID)
RETURNS TABLE (entity_type TEXT, entity_id UUID)
LANGUAGE sql
STABLE
SECURITY DEFINER
SET search_path = public
AS $$
    SELECT entity_type, entity_id
    FROM public.user_entities
    WHERE user_id = _user_id
$$;
