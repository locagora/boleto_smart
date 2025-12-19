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
  webhook: z.string().url("URL inválida").optional().or(z.literal("")),
});

type FormValues = z.infer<typeof formSchema>;

interface MasterRegionalFormProps {
  onSuccess?: () => void;
}

export function MasterRegionalForm({ onSuccess }: MasterRegionalFormProps) {
  const form = useForm<FormValues>({
    resolver: zodResolver(formSchema),
    defaultValues: {
      nome: "",
      razao_social: "",
      cnpj: "",
      endereco: "",
      email: "",
      telefone: "",
      webhook: "",
    },
  });

  const onSubmit = async (values: FormValues) => {
    try {
      // Generate temporary password: first name + last 4 digits of phone
      const firstName = values.nome.split(" ")[0];
      const last4Digits = values.telefone.slice(-4);
      const tempPassword = `${firstName}${last4Digits}`;

      // Create user with role using Edge Function
      const { data: createUserData, error: createUserError } = await supabase.functions.invoke(
        'create-user-with-role',
        {
          body: {
            email: values.email,
            password: tempPassword,
            role: 'master_regional',
          },
        }
      );

      if (createUserError) throw createUserError;
      if (createUserData?.error) throw new Error(createUserData.error);

      // Insert into master_regionais table
      const { error } = await supabase
        .from("master_regionais")
        .insert([{
          nome: values.nome,
          razao_social: values.razao_social,
          cnpj: values.cnpj,
          endereco: values.endereco,
          email: values.email,
          telefone: values.telefone,
          webhook: values.webhook || null,
        }]);

      if (error) throw error;

      toast.success(`Master Regional cadastrado! Login: ${values.email} | Senha: ${tempPassword}`);
      form.reset();
      onSuccess?.();
    } catch (error: any) {
      toast.error(error.message || "Erro ao cadastrar Master Regional");
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
                <Input placeholder="Nome do Master Regional" {...field} />
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
          Cadastrar Master Regional
        </Button>
      </form>
    </Form>
  );
}
