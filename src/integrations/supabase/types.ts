export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json | undefined }
  | Json[]

export type Database = {
  // Allows to automatically instantiate createClient with right options
  // instead of createClient<Database, { PostgrestVersion: 'XX' }>(URL, KEY)
  __InternalSupabase: {
    PostgrestVersion: "13.0.5"
  }
  public: {
    Tables: {
      customers: {
        Row: {
          city_name: string | null
          country: string | null
          cpf_cnpj: string
          created_at: string | null
          date_created: string
          email: string | null
          franquia_id: string | null
          id: string
          mobile_phone: string | null
          name: string
          person_type: string
          state: string | null
          updated_at: string | null
        }
        Insert: {
          city_name?: string | null
          country?: string | null
          cpf_cnpj: string
          created_at?: string | null
          date_created: string
          email?: string | null
          franquia_id?: string | null
          id: string
          mobile_phone?: string | null
          name: string
          person_type: string
          state?: string | null
          updated_at?: string | null
        }
        Update: {
          city_name?: string | null
          country?: string | null
          cpf_cnpj?: string
          created_at?: string | null
          date_created?: string
          email?: string | null
          franquia_id?: string | null
          id?: string
          mobile_phone?: string | null
          name?: string
          person_type?: string
          state?: string | null
          updated_at?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "customers_franquia_id_fkey"
            columns: ["franquia_id"]
            isOneToOne: false
            referencedRelation: "franquias"
            referencedColumns: ["id"]
          },
        ]
      }
      franquias: {
        Row: {
          asaas_token: string | null
          ativo: boolean | null
          cnpj: string
          created_at: string | null
          email: string
          endereco: string
          id: string
          master_regional_id: string | null
          nome: string
          razao_social: string
          telefone: string
          token: string | null
          updated_at: string | null
          webhook: string | null
        }
        Insert: {
          asaas_token?: string | null
          ativo?: boolean | null
          cnpj: string
          created_at?: string | null
          email?: string
          endereco: string
          id?: string
          master_regional_id?: string | null
          nome: string
          razao_social: string
          telefone?: string
          token?: string | null
          updated_at?: string | null
          webhook?: string | null
        }
        Update: {
          asaas_token?: string | null
          ativo?: boolean | null
          cnpj?: string
          created_at?: string | null
          email?: string
          endereco?: string
          id?: string
          master_regional_id?: string | null
          nome?: string
          razao_social?: string
          telefone?: string
          token?: string | null
          updated_at?: string | null
          webhook?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "franquias_master_regional_id_fkey"
            columns: ["master_regional_id"]
            isOneToOne: false
            referencedRelation: "master_regionais"
            referencedColumns: ["id"]
          },
        ]
      }
      master_regionais: {
        Row: {
          cnpj: string
          created_at: string | null
          email: string
          endereco: string
          id: string
          nome: string
          razao_social: string
          telefone: string
          updated_at: string | null
          webhook: string | null
        }
        Insert: {
          cnpj: string
          created_at?: string | null
          email?: string
          endereco: string
          id?: string
          nome: string
          razao_social: string
          telefone?: string
          updated_at?: string | null
          webhook?: string | null
        }
        Update: {
          cnpj?: string
          created_at?: string | null
          email?: string
          endereco?: string
          id?: string
          nome?: string
          razao_social?: string
          telefone?: string
          updated_at?: string | null
          webhook?: string | null
        }
        Relationships: []
      }
      payment_pix: {
        Row: {
          billing_type: string
          created_at: string | null
          customer_id: string
          customer_name: string | null
          date_created: string
          description: string | null
          due_date: string | null
          franquia_id: string | null
          id: string
          invoice_url: string | null
          net_value: number | null
          payment_date: string | null
          status: string
          transaction_receipt_url: string | null
          updated_at: string | null
          value: number
        }
        Insert: {
          billing_type?: string
          created_at?: string | null
          customer_id: string
          customer_name?: string | null
          date_created: string
          description?: string | null
          due_date?: string | null
          franquia_id?: string | null
          id: string
          invoice_url?: string | null
          net_value?: number | null
          payment_date?: string | null
          status: string
          transaction_receipt_url?: string | null
          updated_at?: string | null
          value: number
        }
        Update: {
          billing_type?: string
          created_at?: string | null
          customer_id?: string
          customer_name?: string | null
          date_created?: string
          description?: string | null
          due_date?: string | null
          franquia_id?: string | null
          id?: string
          invoice_url?: string | null
          net_value?: number | null
          payment_date?: string | null
          status?: string
          transaction_receipt_url?: string | null
          updated_at?: string | null
          value?: number
        }
        Relationships: []
      }
      payment_boleto: {
        Row: {
          billing_type: string
          created_at: string | null
          customer_id: string
          customer_name: string | null
          date_created: string
          description: string | null
          due_date: string | null
          franquia_id: string | null
          id: string
          invoice_url: string | null
          bank_slip_url: string | null
          net_value: number | null
          payment_date: string | null
          status: string
          transaction_receipt_url: string | null
          updated_at: string | null
          value: number
        }
        Insert: {
          billing_type?: string
          created_at?: string | null
          customer_id: string
          customer_name?: string | null
          date_created: string
          description?: string | null
          due_date?: string | null
          franquia_id?: string | null
          id: string
          invoice_url?: string | null
          bank_slip_url?: string | null
          net_value?: number | null
          payment_date?: string | null
          status: string
          transaction_receipt_url?: string | null
          updated_at?: string | null
          value: number
        }
        Update: {
          billing_type?: string
          created_at?: string | null
          customer_id?: string
          customer_name?: string | null
          date_created?: string
          description?: string | null
          due_date?: string | null
          franquia_id?: string | null
          id?: string
          invoice_url?: string | null
          bank_slip_url?: string | null
          net_value?: number | null
          payment_date?: string | null
          status?: string
          transaction_receipt_url?: string | null
          updated_at?: string | null
          value?: number
        }
        Relationships: []
      }
      payments: {
        Row: {
          bank_slip_url: string | null
          billing_type: string
          created_at: string | null
          customer_id: string
          date_created: string
          description: string | null
          discount: Json | null
          due_date: string
          fine: Json | null
          franquia_id: string | null
          id: string
          interest: Json | null
          invoice_number: string | null
          invoice_url: string | null
          net_value: number | null
          nosso_numero: string | null
          original_due_date: string | null
          payment_date: string | null
          status: string
          subscription: string | null
          updated_at: string | null
          value: number
        }
        Insert: {
          bank_slip_url?: string | null
          billing_type: string
          created_at?: string | null
          customer_id: string
          date_created: string
          description?: string | null
          discount?: Json | null
          due_date: string
          fine?: Json | null
          franquia_id?: string | null
          id: string
          interest?: Json | null
          invoice_number?: string | null
          invoice_url?: string | null
          net_value?: number | null
          nosso_numero?: string | null
          original_due_date?: string | null
          payment_date?: string | null
          status: string
          subscription?: string | null
          updated_at?: string | null
          value: number
        }
        Update: {
          bank_slip_url?: string | null
          billing_type?: string
          created_at?: string | null
          customer_id?: string
          date_created?: string
          description?: string | null
          discount?: Json | null
          due_date?: string
          fine?: Json | null
          franquia_id?: string | null
          id?: string
          interest?: Json | null
          invoice_number?: string | null
          invoice_url?: string | null
          net_value?: number | null
          nosso_numero?: string | null
          original_due_date?: string | null
          payment_date?: string | null
          status?: string
          subscription?: string | null
          updated_at?: string | null
          value?: number
        }
        Relationships: [
          {
            foreignKeyName: "payments_franquia_id_fkey"
            columns: ["franquia_id"]
            isOneToOne: false
            referencedRelation: "franquias"
            referencedColumns: ["id"]
          },
        ]
      }
      user_entities: {
        Row: {
          created_at: string | null
          entity_id: string
          entity_type: string
          id: string
          user_id: string
        }
        Insert: {
          created_at?: string | null
          entity_id: string
          entity_type: string
          id?: string
          user_id: string
        }
        Update: {
          created_at?: string | null
          entity_id?: string
          entity_type?: string
          id?: string
          user_id?: string
        }
        Relationships: []
      }
      user_roles: {
        Row: {
          created_at: string | null
          id: string
          role: Database["public"]["Enums"]["app_role"]
          user_id: string
        }
        Insert: {
          created_at?: string | null
          id?: string
          role: Database["public"]["Enums"]["app_role"]
          user_id: string
        }
        Update: {
          created_at?: string | null
          id?: string
          role?: Database["public"]["Enums"]["app_role"]
          user_id?: string
        }
        Relationships: []
      }
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
      get_my_franquia_data: {
        Args: never
        Returns: {
          out_email: string
          out_id: string
          out_nome: string
          out_token: string
          out_webhook: string
        }[]
      }
      get_user_entities: {
        Args: { _user_id: string }
        Returns: {
          entity_id: string
          entity_type: string
        }[]
      }
      get_user_franquia_id: { Args: { _user_id: string }; Returns: string }
      get_user_franquia_ids: { Args: never; Returns: string[] }
      get_user_master_ids: { Args: never; Returns: string[] }
      get_user_master_regional_id: {
        Args: { _user_id: string }
        Returns: string
      }
      has_role: {
        Args: {
          _role: Database["public"]["Enums"]["app_role"]
          _user_id: string
        }
        Returns: boolean
      }
      is_franquia: { Args: never; Returns: boolean }
      is_master_regional: { Args: never; Returns: boolean }
      is_master_regional_for_franquia: {
        Args: { _franquia_id: string; _user_id: string }
        Returns: boolean
      }
      is_super_admin: { Args: never; Returns: boolean }
      update_my_franquia_settings: {
        Args: { p_token?: string; p_webhook?: string }
        Returns: boolean
      }
      user_has_entity_access: {
        Args: { _entity_id: string; _entity_type: string; _user_id: string }
        Returns: boolean
      }
    }
    Enums: {
      app_role:
        | "super_admin"
        | "admin"
        | "user"
        | "master_regional"
        | "franquia"
    }
    CompositeTypes: {
      [_ in never]: never
    }
  }
}

type DatabaseWithoutInternals = Omit<Database, "__InternalSupabase">

type DefaultSchema = DatabaseWithoutInternals[Extract<keyof Database, "public">]

export type Tables<
  DefaultSchemaTableNameOrOptions extends
    | keyof (DefaultSchema["Tables"] & DefaultSchema["Views"])
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof (DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"] &
        DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Views"])
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? (DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"] &
      DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Views"])[TableName] extends {
      Row: infer R
    }
    ? R
    : never
  : DefaultSchemaTableNameOrOptions extends keyof (DefaultSchema["Tables"] &
        DefaultSchema["Views"])
    ? (DefaultSchema["Tables"] &
        DefaultSchema["Views"])[DefaultSchemaTableNameOrOptions] extends {
        Row: infer R
      }
      ? R
      : never
    : never

export type TablesInsert<
  DefaultSchemaTableNameOrOptions extends
    | keyof DefaultSchema["Tables"]
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Insert: infer I
    }
    ? I
    : never
  : DefaultSchemaTableNameOrOptions extends keyof DefaultSchema["Tables"]
    ? DefaultSchema["Tables"][DefaultSchemaTableNameOrOptions] extends {
        Insert: infer I
      }
      ? I
      : never
    : never

export type TablesUpdate<
  DefaultSchemaTableNameOrOptions extends
    | keyof DefaultSchema["Tables"]
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Update: infer U
    }
    ? U
    : never
  : DefaultSchemaTableNameOrOptions extends keyof DefaultSchema["Tables"]
    ? DefaultSchema["Tables"][DefaultSchemaTableNameOrOptions] extends {
        Update: infer U
      }
      ? U
      : never
    : never

export type Enums<
  DefaultSchemaEnumNameOrOptions extends
    | keyof DefaultSchema["Enums"]
    | { schema: keyof DatabaseWithoutInternals },
  EnumName extends DefaultSchemaEnumNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaEnumNameOrOptions["schema"]]["Enums"]
    : never = never,
> = DefaultSchemaEnumNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[DefaultSchemaEnumNameOrOptions["schema"]]["Enums"][EnumName]
  : DefaultSchemaEnumNameOrOptions extends keyof DefaultSchema["Enums"]
    ? DefaultSchema["Enums"][DefaultSchemaEnumNameOrOptions]
    : never

export type CompositeTypes<
  PublicCompositeTypeNameOrOptions extends
    | keyof DefaultSchema["CompositeTypes"]
    | { schema: keyof DatabaseWithoutInternals },
  CompositeTypeName extends PublicCompositeTypeNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[PublicCompositeTypeNameOrOptions["schema"]]["CompositeTypes"]
    : never = never,
> = PublicCompositeTypeNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[PublicCompositeTypeNameOrOptions["schema"]]["CompositeTypes"][CompositeTypeName]
  : PublicCompositeTypeNameOrOptions extends keyof DefaultSchema["CompositeTypes"]
    ? DefaultSchema["CompositeTypes"][PublicCompositeTypeNameOrOptions]
    : never

export const Constants = {
  public: {
    Enums: {
      app_role: ["super_admin", "admin", "user", "master_regional", "franquia"],
    },
  },
} as const
