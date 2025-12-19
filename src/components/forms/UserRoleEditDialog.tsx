import { useEffect, useState } from "react";
import { Button } from "@/components/ui/button";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";
import { Label } from "@/components/ui/label";
import { Checkbox } from "@/components/ui/checkbox";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { supabase } from "@/integrations/supabase/client";
import { toast } from "sonner";
import { Badge } from "@/components/ui/badge";
import { X, Plus } from "lucide-react";

interface UserRoleEditDialogProps {
  open: boolean;
  onOpenChange: (open: boolean) => void;
  user: {
    user_id: string;
    roles: string[];
    entity: string;
    email?: string;
  } | null;
  onSuccess?: () => void;
}

interface EntityAssociation {
  id?: string;
  entity_type: "master_regional" | "franquia";
  entity_id: string;
  entity_name?: string;
}

const ALL_ROLES = [
  { value: "super_admin", label: "Super Admin", color: "bg-red-500" },
  { value: "master_regional", label: "Master Regional", color: "bg-blue-500" },
  { value: "franquia", label: "Franquia", color: "bg-green-500" },
];

export function UserRoleEditDialog({
  open,
  onOpenChange,
  user,
  onSuccess,
}: UserRoleEditDialogProps) {
  const [selectedRoles, setSelectedRoles] = useState<string[]>([]);
  const [masterRegionais, setMasterRegionais] = useState<any[]>([]);
  const [franquias, setFranquias] = useState<any[]>([]);
  const [filteredFranquias, setFilteredFranquias] = useState<any[]>([]);
  const [saving, setSaving] = useState(false);

  // Entity associations
  const [masterAssociations, setMasterAssociations] = useState<EntityAssociation[]>([]);
  const [franquiaAssociations, setFranquiaAssociations] = useState<EntityAssociation[]>([]);

  // For adding new associations
  const [selectedMasterId, setSelectedMasterId] = useState<string>("");
  const [selectedFranquiaId, setSelectedFranquiaId] = useState<string>("");
  const [selectedMasterForFranquia, setSelectedMasterForFranquia] = useState<string>("");

  useEffect(() => {
    if (user) {
      setSelectedRoles([...user.roles]);
      // Reset associations when user changes
      setMasterAssociations([]);
      setFranquiaAssociations([]);
      setSelectedMasterId("");
      setSelectedFranquiaId("");
      setSelectedMasterForFranquia("");
    }
  }, [user]);

  useEffect(() => {
    if (open && user) {
      fetchEntities();
      fetchUserEntityAssociations();
    }
  }, [open, user]);

  // Filter franquias when master is selected for adding new association
  useEffect(() => {
    if (selectedMasterForFranquia) {
      const filtered = franquias.filter(f => f.master_regional_id === selectedMasterForFranquia);
      setFilteredFranquias(filtered);
      setSelectedFranquiaId("");
    } else {
      setFilteredFranquias([]);
    }
  }, [selectedMasterForFranquia, franquias]);

  const fetchEntities = async () => {
    console.log('=== FETCHING ENTITIES FOR USER ROLE EDIT ===');

    const [mastersRes, franquiasRes] = await Promise.all([
      supabase.from("master_regionais").select("id, nome, email").order("nome"),
      supabase.from("franquias").select("id, nome, email, master_regional_id").order("nome"),
    ]);

    console.log('Masters result:', mastersRes);
    console.log('Franquias result:', franquiasRes);

    if (mastersRes.error) {
      console.error('Error fetching masters:', mastersRes.error);
      toast.error("Erro ao carregar Masters: " + mastersRes.error.message);
    }

    if (franquiasRes.error) {
      console.error('Error fetching franquias:', franquiasRes.error);
      toast.error("Erro ao carregar Franquias: " + franquiasRes.error.message);
    }

    setMasterRegionais(mastersRes.data || []);
    setFranquias(franquiasRes.data || []);

    console.log('Masters loaded:', mastersRes.data?.length || 0);
    console.log('Franquias loaded:', franquiasRes.data?.length || 0);
  };

  const fetchUserEntityAssociations = async () => {
    if (!user) return;

    try {
      const { data: associations, error } = await supabase
        .from("user_entities" as any)
        .select("id, entity_type, entity_id")
        .eq("user_id", user.user_id);

      if (error) {
        // Tabela pode não existir ainda - ignorar silenciosamente
        console.log("user_entities table may not exist yet:", error.message);
        return;
      }

      if (!associations) return;

      // Separate by type and enrich with names
      const masters: EntityAssociation[] = [];
      const franquiasAssoc: EntityAssociation[] = [];

      for (const assoc of associations as any[] || []) {
        const entityType = assoc.entity_type;
        const entityId = assoc.entity_id;
        const assocId = assoc.id;
        
        if (entityType === "master_regional") {
          const { data: master } = await supabase
            .from("master_regionais")
            .select("nome")
            .eq("id", entityId)
            .maybeSingle();
          masters.push({
            id: assocId,
            entity_type: "master_regional",
            entity_id: entityId,
            entity_name: master?.nome || "Desconhecido"
          });
        } else if (entityType === "franquia") {
          const { data: franquia } = await supabase
            .from("franquias")
            .select("nome")
            .eq("id", entityId)
            .maybeSingle();
          franquiasAssoc.push({
            id: assocId,
            entity_type: "franquia",
            entity_id: entityId,
            entity_name: franquia?.nome || "Desconhecido"
          });
        }
      }

      setMasterAssociations(masters);
      setFranquiaAssociations(franquiasAssoc);
    } catch (e) {
      console.log("Error fetching user entities:", e);
    }
  };

  const handleRoleToggle = (role: string) => {
    setSelectedRoles((prev) =>
      prev.includes(role) ? prev.filter((r) => r !== role) : [...prev, role]
    );
  };

  const handleAddMasterAssociation = () => {
    if (!selectedMasterId) return;

    // Check if already associated
    if (masterAssociations.some(a => a.entity_id === selectedMasterId)) {
      toast.error("Este Master Regional já está associado");
      return;
    }

    const master = masterRegionais.find(m => m.id === selectedMasterId);
    setMasterAssociations(prev => [...prev, {
      entity_type: "master_regional",
      entity_id: selectedMasterId,
      entity_name: master?.nome
    }]);
    setSelectedMasterId("");
  };

  const handleAddFranquiaAssociation = () => {
    if (!selectedFranquiaId) return;

    // Check if already associated
    if (franquiaAssociations.some(a => a.entity_id === selectedFranquiaId)) {
      toast.error("Esta Franquia já está associada");
      return;
    }

    const franquia = franquias.find(f => f.id === selectedFranquiaId);
    setFranquiaAssociations(prev => [...prev, {
      entity_type: "franquia",
      entity_id: selectedFranquiaId,
      entity_name: franquia?.nome
    }]);
    setSelectedFranquiaId("");
    setSelectedMasterForFranquia("");
  };

  const handleRemoveMasterAssociation = (entityId: string) => {
    setMasterAssociations(prev => prev.filter(a => a.entity_id !== entityId));
  };

  const handleRemoveFranquiaAssociation = (entityId: string) => {
    setFranquiaAssociations(prev => prev.filter(a => a.entity_id !== entityId));
  };

  const handleSave = async () => {
    if (!user) return;

    // Validação removida temporariamente - tabela user_entities pode não existir
    // As associações serão opcionais até a migração ser executada

    setSaving(true);
    try {
      // Get current roles from database
      const { data: currentRoles, error: fetchError } = await supabase
        .from("user_roles")
        .select("role")
        .eq("user_id", user.user_id);

      if (fetchError) throw fetchError;

      const currentRoleSet = new Set(currentRoles?.map((r) => r.role) || []);
      const selectedRoleSet = new Set(selectedRoles);

      // Roles to add
      const rolesToAdd = selectedRoles.filter((r) => !currentRoleSet.has(r as any));
      // Roles to remove
      const rolesToRemove = Array.from(currentRoleSet).filter(
        (r) => !selectedRoleSet.has(r)
      );

      // Remove roles
      if (rolesToRemove.length > 0) {
        const { error: deleteError } = await supabase
          .from("user_roles")
          .delete()
          .eq("user_id", user.user_id)
          .in("role", rolesToRemove);

        if (deleteError) throw deleteError;
      }

      // Add roles
      if (rolesToAdd.length > 0) {
        const { error: insertError } = await supabase.from("user_roles").insert(
          rolesToAdd.map((role) => ({
            user_id: user.user_id,
            role: role as "super_admin" | "master_regional" | "franquia",
          }))
        );

        if (insertError) throw insertError;
      }

      // Update entity associations (se a tabela existir)
      try {
        console.log('=== SAVING USER ENTITIES ===');
        console.log('User ID:', user.user_id);
        console.log('Master associations:', masterAssociations);
        console.log('Franquia associations:', franquiaAssociations);

        // First, delete all existing associations
        const deleteResult = await supabase
          .from("user_entities" as any)
          .delete()
          .eq("user_id", user.user_id);

        console.log('Delete result:', deleteResult);
        if (deleteResult.error) {
          console.error('Delete error:', deleteResult.error);
        }

        // Insert new associations
        const allAssociations = [
          ...masterAssociations.map(a => ({
            user_id: user.user_id,
            entity_type: "master_regional" as const,
            entity_id: a.entity_id
          })),
          ...franquiaAssociations.map(a => ({
            user_id: user.user_id,
            entity_type: "franquia" as const,
            entity_id: a.entity_id
          }))
        ];

        console.log('All associations to insert:', allAssociations);

        if (allAssociations.length > 0) {
          const insertResult = await supabase
            .from("user_entities" as any)
            .insert(allAssociations);

          console.log('Insert result:', insertResult);
          if (insertResult.error) {
            console.error('Insert error:', insertResult.error);
            toast.error("Erro ao salvar associações: " + insertResult.error.message);
          }
        }
      } catch (e) {
        // Tabela pode não existir - ignorar erros de associação
        console.log("Could not update user_entities (table may not exist):", e);
      }

      toast.success("Permissões atualizadas com sucesso!");
      onOpenChange(false);
      onSuccess?.();
    } catch (error: any) {
      toast.error(error.message || "Erro ao atualizar permissões");
    } finally {
      setSaving(false);
    }
  };

  if (!user) return null;

  const showMasterSelector = selectedRoles.includes("master_regional");
  const showFranquiaSelector = selectedRoles.includes("franquia");

  return (
    <Dialog open={open} onOpenChange={onOpenChange}>
      <DialogContent className="max-w-md max-h-[90vh] overflow-y-auto">
        <DialogHeader>
          <DialogTitle>Editar Permissões do Usuário</DialogTitle>
          <DialogDescription>
            {user.email && <span className="block">{user.email}</span>}
            <span className="text-xs">ID: {user.user_id.substring(0, 8)}...</span>
          </DialogDescription>
        </DialogHeader>

        <div className="space-y-6 py-4">
          <div>
            <Label className="text-sm font-medium mb-3 block">
              Roles Atuais
            </Label>
            <div className="flex flex-wrap gap-2">
              {user.roles.length === 0 ? (
                <span className="text-muted-foreground text-sm">
                  Nenhuma role atribuída
                </span>
              ) : (
                user.roles.map((role) => {
                  const roleInfo = ALL_ROLES.find((r) => r.value === role);
                  return (
                    <Badge
                      key={role}
                      className={`${roleInfo?.color || "bg-gray-500"} text-white`}
                    >
                      {roleInfo?.label || role}
                    </Badge>
                  );
                })
              )}
            </div>
          </div>

          <div>
            <Label className="text-sm font-medium mb-3 block">
              Selecionar Roles
            </Label>
            <div className="space-y-3">
              {ALL_ROLES.map((role) => (
                <div key={role.value} className="flex items-center space-x-3">
                  <Checkbox
                    id={role.value}
                    checked={selectedRoles.includes(role.value)}
                    onCheckedChange={() => handleRoleToggle(role.value)}
                  />
                  <label
                    htmlFor={role.value}
                    className="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70 cursor-pointer"
                  >
                    {role.label}
                  </label>
                </div>
              ))}
            </div>
          </div>

          {/* Master Regional Associations */}
          {showMasterSelector && (
            <div className="space-y-3 p-4 bg-blue-50 rounded-lg border border-blue-200">
              <Label className="text-sm font-medium text-blue-800">
                Masters Regionais Associados
              </Label>

              {/* Current associations */}
              {masterAssociations.length > 0 && (
                <div className="flex flex-wrap gap-2">
                  {masterAssociations.map((assoc) => (
                    <Badge
                      key={assoc.entity_id}
                      className="bg-blue-500 text-white flex items-center gap-1 pr-1"
                    >
                      {assoc.entity_name}
                      <button
                        onClick={() => handleRemoveMasterAssociation(assoc.entity_id)}
                        className="ml-1 hover:bg-blue-600 rounded-full p-0.5"
                      >
                        <X className="h-3 w-3" />
                      </button>
                    </Badge>
                  ))}
                </div>
              )}

              {/* Add new association */}
              <div className="flex gap-2">
                <Select value={selectedMasterId} onValueChange={setSelectedMasterId}>
                  <SelectTrigger className="flex-1">
                    <SelectValue placeholder="Adicionar Master Regional" />
                  </SelectTrigger>
                  <SelectContent>
                    {masterRegionais
                      .filter(m => !masterAssociations.some(a => a.entity_id === m.id))
                      .map((master) => (
                        <SelectItem key={master.id} value={master.id}>
                          {master.nome}
                        </SelectItem>
                      ))}
                  </SelectContent>
                </Select>
                <Button
                  type="button"
                  size="icon"
                  onClick={handleAddMasterAssociation}
                  disabled={!selectedMasterId}
                  className="bg-blue-600 hover:bg-blue-700"
                >
                  <Plus className="h-4 w-4" />
                </Button>
              </div>

              <p className="text-xs text-blue-600">
                Múltiplos usuários podem ser associados ao mesmo Master Regional
              </p>
            </div>
          )}

          {/* Franquia Associations */}
          {showFranquiaSelector && (
            <div className="space-y-3 p-4 bg-green-50 rounded-lg border border-green-200">
              <Label className="text-sm font-medium text-green-800">
                Franquias Associadas
              </Label>

              {/* Current associations */}
              {franquiaAssociations.length > 0 && (
                <div className="flex flex-wrap gap-2">
                  {franquiaAssociations.map((assoc) => (
                    <Badge
                      key={assoc.entity_id}
                      className="bg-green-500 text-white flex items-center gap-1 pr-1"
                    >
                      {assoc.entity_name}
                      <button
                        onClick={() => handleRemoveFranquiaAssociation(assoc.entity_id)}
                        className="ml-1 hover:bg-green-600 rounded-full p-0.5"
                      >
                        <X className="h-3 w-3" />
                      </button>
                    </Badge>
                  ))}
                </div>
              )}

              {/* Add new association */}
              <div className="space-y-2">
                <Label className="text-xs text-green-700">1. Selecione o Master Regional</Label>
                <Select value={selectedMasterForFranquia} onValueChange={setSelectedMasterForFranquia}>
                  <SelectTrigger>
                    <SelectValue placeholder="Selecione o Master Regional" />
                  </SelectTrigger>
                  <SelectContent>
                    {masterRegionais.map((master) => (
                      <SelectItem key={master.id} value={master.id}>
                        {master.nome}
                      </SelectItem>
                    ))}
                  </SelectContent>
                </Select>
              </div>

              {selectedMasterForFranquia && (
                <div className="space-y-2">
                  <Label className="text-xs text-green-700">2. Selecione a Franquia</Label>
                  <div className="flex gap-2">
                    <Select value={selectedFranquiaId} onValueChange={setSelectedFranquiaId}>
                      <SelectTrigger className="flex-1">
                        <SelectValue placeholder="Selecione a Franquia" />
                      </SelectTrigger>
                      <SelectContent>
                        {filteredFranquias
                          .filter(f => !franquiaAssociations.some(a => a.entity_id === f.id))
                          .map((franquia) => (
                            <SelectItem key={franquia.id} value={franquia.id}>
                              {franquia.nome}
                            </SelectItem>
                          ))}
                        {filteredFranquias.filter(f => !franquiaAssociations.some(a => a.entity_id === f.id)).length === 0 && (
                          <SelectItem value="none" disabled>
                            Nenhuma franquia disponível
                          </SelectItem>
                        )}
                      </SelectContent>
                    </Select>
                    <Button
                      type="button"
                      size="icon"
                      onClick={handleAddFranquiaAssociation}
                      disabled={!selectedFranquiaId}
                      className="bg-green-600 hover:bg-green-700"
                    >
                      <Plus className="h-4 w-4" />
                    </Button>
                  </div>
                </div>
              )}

              <p className="text-xs text-green-600">
                Múltiplos usuários podem ser associados à mesma Franquia
              </p>
            </div>
          )}

          {user.entity && !showMasterSelector && !showFranquiaSelector && (
            <div>
              <Label className="text-sm font-medium mb-2 block">
                Entidade Associada
              </Label>
              <p className="text-sm text-muted-foreground">{user.entity}</p>
            </div>
          )}
        </div>

        <div className="flex gap-2 pt-4">
          <Button
            type="button"
            variant="outline"
            onClick={() => onOpenChange(false)}
            className="flex-1"
            disabled={saving}
          >
            Cancelar
          </Button>
          <Button onClick={handleSave} className="flex-1" disabled={saving}>
            {saving ? "Salvando..." : "Salvar"}
          </Button>
        </div>
      </DialogContent>
    </Dialog>
  );
}
