import { useForm } from "react-hook-form";
import { zodResolver } from "@hookform/resolvers/zod";
import * as z from "zod";
import { Button } from "@/components/ui/button";
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
import { supabase } from "@/integrations/supabase/client";
import { toast } from "sonner";

const formSchema = z.object({
  nome: z.string().min(1, "Nome é obrigatório").max(100),
  razao_social: z.string().min(1, "Razão Social é obrigatória").max(200),
  cnpj: z.string().min(14, "CNPJ inválido").max(18),
  endereco: z.string().min(1, "Endereço é obrigatório").max(500),
  email: z.string().email("Email inválido").min(1, "Email é obrigatório"),
  telefone: z.string().min(10, "Telefone deve ter pelo menos 10 dígitos"),
  senha: z.string().min(6, "Senha deve ter no mínimo 6 caracteres").optional().or(z.literal("")),
  webhook: z.string().url("URL inválida").optional().or(z.literal("")),
});

type FormValues = z.infer<typeof formSchema>;

interface FranquiaFormMasterProps {
  masterRegionalId: string;
  onSuccess?: () => void;
}

export function FranquiaFormMaster({ masterRegionalId, onSuccess }: FranquiaFormMasterProps) {
  const form = useForm<FormValues>({
    resolver: zodResolver(formSchema),
    defaultValues: {
      nome: "",
      razao_social: "",
      cnpj: "",
      endereco: "",
      email: "",
      telefone: "",
      senha: "",
      webhook: "",
    },
  });

  const onSubmit = async (values: FormValues) => {
    try {
      // Use custom password if provided, otherwise generate temporary password
      let password: string;
      if (values.senha && values.senha.length >= 6) {
        password = values.senha;
      } else {
        // Generate temporary password: first name + last 4 digits of phone
        const firstName = values.nome.split(" ")[0];
        const last4Digits = values.telefone.slice(-4);
        password = `${firstName}${last4Digits}`;
      }

      // Get the current session
      const { data: { session } } = await supabase.auth.getSession();
      if (!session) throw new Error("Você precisa estar autenticado");

      // Create user with role using Edge Function (with elevated privileges)
      const { data: createUserData, error: createUserError } = await supabase.functions.invoke(
        'create-user-with-role',
        {
          body: {
            email: values.email,
            password: password,
            role: 'franquia',
          },
        }
      );

      if (createUserError) throw createUserError;
      if (createUserData?.error) throw new Error(createUserData.error);

      // Insert into franquias table with the master's ID (ativo = false até realizar pagamento)
      const { error } = await supabase
        .from("franquias")
        .insert([{
          nome: values.nome,
          razao_social: values.razao_social,
          cnpj: values.cnpj,
          endereco: values.endereco,
          email: values.email,
          telefone: values.telefone,
          webhook: values.webhook || null,
          master_regional_id: masterRegionalId,
          ativo: false,
        }]);

      if (error) throw error;

      toast.success(`Franquia cadastrada! Login: ${values.email} | Senha: ${password}`);
      form.reset();
      onSuccess?.();
    } catch (error: any) {
      toast.error(error.message || "Erro ao cadastrar Franquia");
    }
  };

  return (
    <Form {...form}>
      <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-6">
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
          name="senha"
          render={({ field }) => (
            <FormItem>
              <FormLabel>Senha (opcional)</FormLabel>
              <FormControl>
                <Input type="password" placeholder="Deixe em branco para gerar automaticamente" {...field} />
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

        <Button type="submit" className="w-full">
          Cadastrar Franquia
        </Button>
      </form>
    </Form>
  );
}
