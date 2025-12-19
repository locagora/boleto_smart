import { useForm } from "react-hook-form";
import { zodResolver } from "@hookform/resolvers/zod";
import * as z from "zod";
import { Button } from "@/components/ui/button";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
} from "@/components/ui/dialog";
import {
  Form,
  FormControl,
  FormField,
  FormItem,
  FormLabel,
  FormMessage,
} from "@/components/ui/form";
import { Input } from "@/components/ui/input";
import { Textarea } from "@/components/ui/textarea";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { supabase } from "@/integrations/supabase/client";
import { toast } from "sonner";
import { useEffect, useState } from "react";

const formSchema = z.object({
  nome: z.string().min(1, "Nome é obrigatório").max(100),
  razao_social: z.string().min(1, "Razão Social é obrigatória").max(200),
  cnpj: z.string().min(14, "CNPJ inválido").max(18),
  endereco: z.string().min(1, "Endereço é obrigatório").max(500),
  email: z.string().email("Email inválido").min(1, "Email é obrigatório"),
  telefone: z.string().min(10, "Telefone deve ter pelo menos 10 dígitos"),
  nova_senha: z.string().min(6, "Senha deve ter no mínimo 6 caracteres").optional().or(z.literal("")),
  webhook: z.string().url("URL inválida").optional().or(z.literal("")),
  master_regional_id: z.string().min(1, "Master Regional é obrigatório"),
});

type FormValues = z.infer<typeof formSchema>;

interface FranquiaEditDialogProps {
  open: boolean;
  onOpenChange: (open: boolean) => void;
  franquia: any;
  onSuccess?: () => void;
}

export function FranquiaEditDialog({ 
  open, 
  onOpenChange, 
  franquia, 
  onSuccess 
}: FranquiaEditDialogProps) {
  const [masterRegionais, setMasterRegionais] = useState<any[]>([]);
  const [loading, setLoading] = useState(true);

  const form = useForm<FormValues>({
    resolver: zodResolver(formSchema),
    defaultValues: {
      nome: "",
      razao_social: "",
      cnpj: "",
      endereco: "",
      email: "",
      telefone: "",
      nova_senha: "",
      webhook: "",
      master_regional_id: "",
    },
  });

  useEffect(() => {
    fetchMasterRegionais();
  }, []);

  useEffect(() => {
    if (franquia) {
      form.reset({
        nome: franquia.nome || "",
        razao_social: franquia.razao_social || "",
        cnpj: franquia.cnpj || "",
        endereco: franquia.endereco || "",
        email: franquia.email || "",
        telefone: franquia.telefone || "",
        nova_senha: "",
        webhook: franquia.webhook || "",
        master_regional_id: franquia.master_regional_id || "",
      });
    }
  }, [franquia, form]);

  const fetchMasterRegionais = async () => {
    try {
      const { data, error } = await supabase
        .from("master_regionais")
        .select("*")
        .order("nome");

      if (error) throw error;
      setMasterRegionais(data || []);
    } catch (error: any) {
      toast.error("Erro ao carregar Master Regionais");
    } finally {
      setLoading(false);
    }
  };

  const onSubmit = async (values: FormValues) => {
    try {
      // Update franquia data
      const { error } = await supabase
        .from("franquias")
        .update({
          nome: values.nome,
          razao_social: values.razao_social,
          cnpj: values.cnpj,
          endereco: values.endereco,
          email: values.email,
          telefone: values.telefone,
          webhook: values.webhook || null,
          master_regional_id: values.master_regional_id,
        })
        .eq("id", franquia.id);

      if (error) throw error;

      // If a new password was provided, update it
      if (values.nova_senha && values.nova_senha.length >= 6) {
        const { data: updateData, error: updateError } = await supabase.functions.invoke(
          'update-user-password',
          {
            body: {
              email: values.email,
              newPassword: values.nova_senha,
            },
          }
        );

        if (updateError) throw updateError;
        if (updateData?.error) throw new Error(updateData.error);

        toast.success("Franquia e senha atualizadas com sucesso!");
      } else {
        toast.success("Franquia atualizada com sucesso!");
      }

      onOpenChange(false);
      onSuccess?.();
    } catch (error: any) {
      toast.error(error.message || "Erro ao atualizar Franquia");
    }
  };

  return (
    <Dialog open={open} onOpenChange={onOpenChange}>
      <DialogContent className="max-w-lg max-h-[90vh] overflow-y-auto">
        <DialogHeader>
          <DialogTitle>Editar Franquia</DialogTitle>
          <DialogDescription>
            Atualize os dados da Franquia
          </DialogDescription>
        </DialogHeader>
        <Form {...form}>
          <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-4">
            <FormField
              control={form.control}
              name="nome"
              render={({ field }) => (
                <FormItem>
                  <FormLabel>Nome</FormLabel>
                  <FormControl>
                    <Input placeholder="Nome da Franquia" {...field} />
                  </FormControl>
                  <FormMessage />
                </FormItem>
              )}
            />

            <FormField
              control={form.control}
              name="razao_social"
              render={({ field }) => (
                <FormItem>
                  <FormLabel>Razão Social</FormLabel>
                  <FormControl>
                    <Input placeholder="Razão Social" {...field} />
                  </FormControl>
                  <FormMessage />
                </FormItem>
              )}
            />

            <FormField
              control={form.control}
              name="cnpj"
              render={({ field }) => (
                <FormItem>
                  <FormLabel>CNPJ</FormLabel>
                  <FormControl>
                    <Input placeholder="00.000.000/0000-00" {...field} />
                  </FormControl>
                  <FormMessage />
                </FormItem>
              )}
            />

            <FormField
              control={form.control}
              name="endereco"
              render={({ field }) => (
                <FormItem>
                  <FormLabel>Endereço</FormLabel>
                  <FormControl>
                    <Textarea placeholder="Endereço completo" {...field} />
                  </FormControl>
                  <FormMessage />
                </FormItem>
              )}
            />

            <FormField
              control={form.control}
              name="email"
              render={({ field }) => (
                <FormItem>
                  <FormLabel>Email</FormLabel>
                  <FormControl>
                    <Input placeholder="email@exemplo.com" {...field} />
                  </FormControl>
                  <FormMessage />
                </FormItem>
              )}
            />

            <FormField
              control={form.control}
              name="telefone"
              render={({ field }) => (
                <FormItem>
                  <FormLabel>Telefone</FormLabel>
                  <FormControl>
                    <Input placeholder="(11) 98765-4321" {...field} />
                  </FormControl>
                  <FormMessage />
                </FormItem>
              )}
            />

            <FormField
              control={form.control}
              name="nova_senha"
              render={({ field }) => (
                <FormItem>
                  <FormLabel>Nova Senha (opcional)</FormLabel>
                  <FormControl>
                    <Input type="password" placeholder="Deixe em branco para manter a senha atual" {...field} />
                  </FormControl>
                  <FormMessage />
                </FormItem>
              )}
            />

            <FormField
              control={form.control}
              name="webhook"
              render={({ field }) => (
                <FormItem>
                  <FormLabel>Webhook (opcional)</FormLabel>
                  <FormControl>
                    <Input placeholder="https://exemplo.com/webhook" {...field} />
                  </FormControl>
                  <FormMessage />
                </FormItem>
              )}
            />

            <FormField
              control={form.control}
              name="master_regional_id"
              render={({ field }) => (
                <FormItem>
                  <FormLabel>Master Regional</FormLabel>
                  <Select onValueChange={field.onChange} value={field.value}>
                    <FormControl>
                      <SelectTrigger>
                        <SelectValue placeholder="Selecione o Master Regional" />
                      </SelectTrigger>
                    </FormControl>
                    <SelectContent>
                      {loading ? (
                        <SelectItem value="loading" disabled>
                          Carregando...
                        </SelectItem>
                      ) : masterRegionais.length === 0 ? (
                        <SelectItem value="empty" disabled>
                          Nenhum Master Regional cadastrado
                        </SelectItem>
                      ) : (
                        masterRegionais.map((master) => (
                          <SelectItem key={master.id} value={master.id}>
                            {master.nome}
                          </SelectItem>
                        ))
                      )}
                    </SelectContent>
                  </Select>
                  <FormMessage />
                </FormItem>
              )}
            />

            <div className="flex gap-2 pt-4">
              <Button type="button" variant="outline" onClick={() => onOpenChange(false)} className="flex-1">
                Cancelar
              </Button>
              <Button type="submit" className="flex-1">
                Salvar
              </Button>
            </div>
          </form>
        </Form>
      </DialogContent>
    </Dialog>
  );
}