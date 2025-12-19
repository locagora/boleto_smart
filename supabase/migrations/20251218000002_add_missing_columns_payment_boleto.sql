-- Add missing columns to payment_boleto table
-- This is necessary because the table seems to exist but lacks these specific columns
-- causing the "Could not find the 'transaction_receipt_url' column" error.

DO $$
BEGIN
    -- Add transaction_receipt_url if it doesn't exist
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'payment_boleto' AND column_name = 'transaction_receipt_url') THEN
        ALTER TABLE public.payment_boleto ADD COLUMN transaction_receipt_url TEXT;
    END IF;

    -- Add invoice_url if it doesn't exist
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'payment_boleto' AND column_name = 'invoice_url') THEN
        ALTER TABLE public.payment_boleto ADD COLUMN invoice_url TEXT;
    END IF;

    -- Add bank_slip_url if it doesn't exist
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'payment_boleto' AND column_name = 'bank_slip_url') THEN
        ALTER TABLE public.payment_boleto ADD COLUMN bank_slip_url TEXT;
    END IF;

    -- Add franquia_id if it doesn't exist
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'payment_boleto' AND column_name = 'franquia_id') THEN
        ALTER TABLE public.payment_boleto ADD COLUMN franquia_id UUID;
    END IF;

    -- Add billing_type if it doesn't exist (it should be there based on user report but good to be safe)
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'payment_boleto' AND column_name = 'billing_type') THEN
        ALTER TABLE public.payment_boleto ADD COLUMN billing_type TEXT DEFAULT 'BOLETO';
    END IF;

     -- Add payment_date if it doesn't exist
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'payment_boleto' AND column_name = 'payment_date') THEN
        ALTER TABLE public.payment_boleto ADD COLUMN payment_date DATE;
    END IF;

    -- Add due_date if it doesn't exist
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'payment_boleto' AND column_name = 'due_date') THEN
        ALTER TABLE public.payment_boleto ADD COLUMN due_date DATE;
    END IF;

    -- Add net_value if it doesn't exist
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'payment_boleto' AND column_name = 'net_value') THEN
        ALTER TABLE public.payment_boleto ADD COLUMN net_value NUMERIC;
    END IF;

END $$;

-- Reload the schema cache to ensure PostgREST picks up the new columns immediately
NOTIFY pgrst, 'reload schema';
