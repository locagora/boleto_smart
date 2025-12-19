import { Home, CreditCard, Settings, LogOut, Users, Building2, FileText } from "lucide-react";
import { NavLink, useNavigate } from "react-router-dom";
import { useState, useEffect } from "react";
import { supabase } from "@/integrations/supabase/client";
import { toast } from "@/hooks/use-toast";
import {
  Sidebar,
  SidebarContent,
  SidebarGroup,
  SidebarGroupContent,
  SidebarGroupLabel,
  SidebarMenu,
  SidebarMenuButton,
  SidebarMenuItem,
  SidebarHeader,
  SidebarFooter,
} from "@/components/ui/sidebar";

type UserRole = 'franquia' | 'master_regional' | 'super_admin';

const baseMenuItems = [
  { title: "Cobranças Vencidas", url: "/dashboard", icon: Home },
  { title: "Pagamentos PIX", url: "/payment_pix", icon: CreditCard },
  { title: "Pagamentos Boletos", url: "/payment_boleto", icon: FileText },
];

const roleMenuItems: Record<UserRole, { title: string; url: string; icon: any }[]> = {
  franquia: [
    { title: "Configurações", url: "/franquia-settings", icon: Settings },
  ],
  master_regional: [
    { title: "Gerenciar Franquias", url: "/master-admin", icon: Building2 },
  ],
  super_admin: [
    { title: "Painel Admin", url: "/super-admin", icon: Users },
  ],
};

export function AppSidebar() {
  const navigate = useNavigate();
  const [userRole, setUserRole] = useState<UserRole | null>(null);

  useEffect(() => {
    loadUserRole();
  }, []);

  const loadUserRole = async () => {
    try {
      const { data: { user } } = await supabase.auth.getUser();
      if (!user) return;

      const { data: userRoles } = await supabase
        .from('user_roles')
        .select('role')
        .eq('user_id', user.id);

      if (!userRoles || userRoles.length === 0) return;

      const roles = userRoles.map(r => r.role);

      if (roles.includes('super_admin')) {
        setUserRole('super_admin');
      } else if (roles.includes('master_regional')) {
        setUserRole('master_regional');
      } else if (roles.includes('franquia')) {
        setUserRole('franquia');
      }
    } catch (error) {
      console.error('Error loading user role:', error);
    }
  };

  const handleSignOut = async () => {
    const { error } = await supabase.auth.signOut();
    if (error) {
      toast({
        title: "Erro ao sair",
        description: error.message,
        variant: "destructive",
      });
    } else {
      navigate("/");
    }
  };

  const menuItems = [
    ...baseMenuItems,
    ...(userRole ? roleMenuItems[userRole] : []),
  ];

  return (
    <Sidebar className="border-r border-border">
      <SidebarHeader className="py-2 flex items-center justify-center border-b border-border px-4">
        <img src="https://i.postimg.cc/Mp3Ff4Qn/image-removebg-preview-1.png" alt="Logo" className="h-16 w-auto" />
      </SidebarHeader>

      <SidebarContent>
        <SidebarGroup>
          <SidebarGroupLabel>Menu</SidebarGroupLabel>
          <SidebarGroupContent>
            <SidebarMenu>
              {menuItems.map((item) => (
                <SidebarMenuItem key={item.title}>
                  <SidebarMenuButton asChild>
                    <NavLink
                      to={item.url}
                      className={({ isActive }) =>
                        `flex items-center gap-2 px-3 py-2 rounded-md transition-colors ${
                          isActive
                            ? "bg-primary text-primary-foreground"
                            : "hover:bg-muted"
                        }`
                      }
                    >
                      <item.icon className="h-4 w-4" />
                      <span>{item.title}</span>
                    </NavLink>
                  </SidebarMenuButton>
                </SidebarMenuItem>
              ))}
            </SidebarMenu>
          </SidebarGroupContent>
        </SidebarGroup>
      </SidebarContent>

      <SidebarFooter className="p-4 border-t border-border">
        <button
          onClick={handleSignOut}
          className="flex items-center gap-2 w-full px-3 py-2 text-sm text-muted-foreground hover:text-foreground hover:bg-muted rounded-md transition-colors"
        >
          <LogOut className="h-4 w-4" />
          <span>Sair</span>
        </button>
      </SidebarFooter>
    </Sidebar>
  );
}
