import { useState, useEffect } from "react";
import { useNavigate } from "react-router-dom";
import { useForm } from "react-hook-form";
import { zodResolver } from "@hookform/resolvers/zod";
import * as z from "zod";
import { Card } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import {
  Form,
  FormControl,
  FormField,
  FormItem,
  FormLabel,
  FormMessage,
} from "@/components/ui/form";
import { Loader2 } from "lucide-react";
import { Link } from "react-router-dom";
import { toast } from "sonner";
import { supabase } from "@/integrations/supabase/client";
import type { User, Session } from "@supabase/supabase-js";

const authSchema = z.object({
  email: z.string().email("E-mail inválido").min(1, "E-mail é obrigatório"),
  password: z.string().min(6, "Senha deve ter no mínimo 6 caracteres"),
  name: z.string().optional(),
});

type AuthFormValues = z.infer<typeof authSchema>;

const Auth = () => {
  const navigate = useNavigate();
  const [isLogin, setIsLogin] = useState(true);
  const [user, setUser] = useState<User | null>(null);
  const [session, setSession] = useState<Session | null>(null);
  
  const form = useForm<AuthFormValues>({
    resolver: zodResolver(authSchema),
    defaultValues: {
      email: "",
      password: "",
      name: "",
    },
  });

  useEffect(() => {
    // Set up auth state listener FIRST
    const { data: { subscription } } = supabase.auth.onAuthStateChange(
      (event, session) => {
        setSession(session);
        setUser(session?.user ?? null);
        
        // Redirect authenticated users to dashboard
        if (session?.user) {
          navigate("/dashboard");
        }
      }
    );

    // THEN check for existing session
    supabase.auth.getSession().then(({ data: { session } }) => {
      setSession(session);
      setUser(session?.user ?? null);

      if (session?.user) {
        navigate("/dashboard");
      }
    });

    return () => subscription.unsubscribe();
  }, [navigate]);

  const onSubmit = async (values: AuthFormValues) => {
    try {
      if (isLogin) {
        const { error } = await supabase.auth.signInWithPassword({
          email: values.email,
          password: values.password,
        });

        if (error) {
          if (error.message.includes("Invalid login credentials")) {
            toast.error("E-mail ou senha incorretos");
          } else {
            toast.error(error.message);
          }
          return;
        }

        toast.success("Login realizado com sucesso!");
      } else {
        const redirectUrl = `${window.location.origin}/`;
        
        const { error } = await supabase.auth.signUp({
          email: values.email,
          password: values.password,
          options: {
            emailRedirectTo: redirectUrl,
            data: {
              name: values.name,
            },
          },
        });

        if (error) {
          if (error.message.includes("already registered")) {
            toast.error("Este e-mail já está cadastrado");
          } else {
            toast.error(error.message);
          }
          return;
        }

        toast.success("Cadastro realizado! Aguarde a aprovação do administrador.");
        navigate("/aguardando-aprovacao");
        return;
      }
    } catch (error: any) {
      toast.error("Erro ao processar sua solicitação");
    }
  };

  return (
    <div className="min-h-screen bg-gradient-to-b from-background to-muted flex items-center justify-center p-4">
      <div className="w-full max-w-md">
        <Card className="p-8">
          <div className="text-center mb-6">
            <Link to="/" className="inline-block mb-4">
              <img src="/logo.png" alt="Visiun Pay" className="h-96 mx-auto" />
            </Link>
          </div>

          <Form {...form}>
            <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-4">
              {!isLogin && (
                <FormField
                  control={form.control}
                  name="name"
                  render={({ field }) => (
                    <FormItem>
                      <FormLabel>Nome completo</FormLabel>
                      <FormControl>
                        <Input placeholder="João Silva" {...field} />
                      </FormControl>
                      <FormMessage />
                    </FormItem>
                  )}
                />
              )}

              <FormField
                control={form.control}
                name="email"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>E-mail</FormLabel>
                    <FormControl>
                      <Input type="email" placeholder="seu@email.com" {...field} />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              <FormField
                control={form.control}
                name="password"
                render={({ field }) => (
                  <FormItem>
                    <FormLabel>Senha</FormLabel>
                    <FormControl>
                      <Input type="password" placeholder="••••••••" {...field} />
                    </FormControl>
                    <FormMessage />
                  </FormItem>
                )}
              />

              <Button 
                type="submit" 
                disabled={form.formState.isSubmitting} 
                className="w-full"
              >
                {form.formState.isSubmitting ? (
                  <>
                    <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                    Carregando...
                  </>
                ) : isLogin ? (
                  "Entrar"
                ) : (
                  "Cadastrar"
                )}
              </Button>
            </form>
          </Form>

          <div className="mt-6 text-center">
            <span className="text-sm text-muted-foreground">
              {isLogin ? "Não tem uma conta? " : "Já tem uma conta? "}
              <button
                type="button"
                onClick={() => setIsLogin(!isLogin)}
                className="text-primary font-medium hover:underline"
              >
                {isLogin ? "Cadastre-se" : "Fazer login"}
              </button>
            </span>
          </div>
        </Card>

        <div className="mt-6 text-center">
          <Link to="/" className="text-sm text-muted-foreground hover:text-foreground">
            ← Voltar ao início
          </Link>
        </div>
      </div>
    </div>
  );
};

export default Auth;
