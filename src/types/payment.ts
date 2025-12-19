export interface Payment {
  object: string;
  id: string;
  dateCreated: string;
  customer: string;
  subscription: string | null;
  checkoutSession: string | null;
  paymentLink: string | null;
  value: number;
  netValue: number;
  originalValue: number | null;
  interestValue: number | null;
  description: string;
  billingType: string;
  canBePaidAfterDueDate: boolean;
  pixTransaction: any | null;
  status: "OVERDUE" | "PENDING" | "RECEIVED" | "CONFIRMED";
  dueDate: string;
  originalDueDate: string;
  paymentDate: string | null;
  clientPaymentDate: string | null;
  installmentNumber: number | null;
  invoiceUrl: string;
  invoiceNumber: string;
  externalReference: string | null;
  deleted: boolean;
  anticipated: boolean;
  anticipable: boolean;
  creditDate: string | null;
  estimatedCreditDate: string | null;
  transactionReceiptUrl: string | null;
  nossoNumero: string;
  bankSlipUrl: string;
  lastInvoiceViewedDate: string | null;
  lastBankSlipViewedDate: string | null;
  discount: {
    value: number;
    limitDate: string | null;
    dueDateLimitDays: number;
    type: string;
  };
  fine: {
    value: number;
    type: string;
  };
  interest: {
    value: number;
    type: string;
  };
  postalService: boolean;
  escrow: any | null;
  refunds: any | null;
}

export interface PaymentResponse {
  object: string;
  hasMore: boolean;
  totalCount: number;
  limit: number;
  offset: number;
  data: Payment[];
}

export interface Customer {
  object: string;
  id: string;
  dateCreated: string;
  name: string;
  email: string;
  company: string | null;
  phone: string | null;
  mobilePhone: string;
  address: string | null;
  addressNumber: string | null;
  complement: string | null;
  province: string | null;
  postalCode: string | null;
  cpfCnpj: string;
  personType: "FISICA" | "JURIDICA";
  deleted: boolean;
  additionalEmails: string | null;
  externalReference: string | null;
  notificationDisabled: boolean;
  observations: string | null;
  municipalInscription: string | null;
  stateInscription: string | null;
  canDelete: boolean;
  cannotBeDeletedReason: string | null;
  canEdit: boolean;
  cannotEditReason: string | null;
  city: number | null;
  cityName: string | null;
  state: string | null;
  country: string;
  groups?: Array<{ name: string }>;
}

export interface CustomerResponse {
  object: string;
  hasMore: boolean;
  totalCount: number;
  limit: number;
  offset: number;
  data: Customer[];
}

export interface PaymentWithCustomer extends Payment {
  customerData?: Customer;
}
