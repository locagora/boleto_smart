import { createClient } from 'https://esm.sh/@supabase/supabase-js@2.79.0'

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
}

interface Payment {
  id: string
  dateCreated: string
  customer: string
  subscription: string | null
  value: number
  netValue: number
  description: string
  billingType: string
  status: string
  dueDate: string
  originalDueDate: string
  paymentDate: string | null
  invoiceUrl: string
  invoiceNumber: string
  bankSlipUrl: string
  nossoNumero: string
  discount: any
  fine: any
  interest: any
}

interface Customer {
  id: string
  dateCreated: string
  name: string
  email: string
  mobilePhone: string
  cpfCnpj: string
  personType: string
  cityName: string | null
  state: string | null
  country: string
}

Deno.serve(async (req) => {
  // Handle CORS preflight requests
  if (req.method === 'OPTIONS') {
    return new Response(null, { headers: corsHeaders })
  }

  try {
    const supabaseClient = createClient(
      Deno.env.get('SUPABASE_URL') ?? '',
      Deno.env.get('SUPABASE_SERVICE_ROLE_KEY') ?? '',
      {
        auth: {
          autoRefreshToken: false,
          persistSession: false
        }
      }
    )

    // Get authenticated user
    const authHeader = req.headers.get('Authorization')
    if (!authHeader) {
      throw new Error('No authorization header')
    }

    const token = authHeader.replace('Bearer ', '')
    const { data: { user }, error: userError } = await supabaseClient.auth.getUser(token)

    if (userError || !user) {
      throw new Error('Unauthorized')
    }

    console.log('User authenticated:', user.id)

    // Check user role (super_admin, master_regional, or franquia)
    const { data: userRoles, error: roleError } = await supabaseClient
      .from('user_roles')
      .select('role')
      .eq('user_id', user.id)

    if (roleError) {
      console.error('Error checking role:', roleError)
      throw new Error('Error verifying user role')
    }

    if (!userRoles || userRoles.length === 0) {
      throw new Error('User has no assigned role')
    }

    const roles = userRoles.map(r => r.role)
    console.log('User roles:', roles)
    console.log('User email:', user.email)

    let franquiaId: string | null = null
    let webhookUrl: string

    // First, check if a specific franchise name was passed in the body
    let franquiaNome: string | undefined = undefined
    try {
      const text = await req.text()
      if (text && text.trim()) {
        const body = JSON.parse(text)
        franquiaNome = body.franquiaNome
      }
    } catch (e) {
      // No body or invalid JSON, that's okay
      console.log('No body or invalid JSON in request')
    }

    // If franquiaNome is provided, use that for any role that has access
    if (franquiaNome) {
      console.log('Specific franchise requested:', franquiaNome)
      
      // Get franchise data - try exact match first, then ilike
      let franquiaResult = await supabaseClient
        .from('franquias')
        .select('id, nome, webhook, master_regional_id')
        .eq('nome', franquiaNome)
        .maybeSingle()
      
      // If no exact match, try ilike
      if (!franquiaResult.data) {
        franquiaResult = await supabaseClient
          .from('franquias')
          .select('id, nome, webhook, master_regional_id')
          .ilike('nome', `%${franquiaNome}%`)
          .maybeSingle()
      }
      
      const franquia = franquiaResult.data
      
      if (!franquia) {
        console.error('Franchise not found:', franquiaNome)
        throw new Error('Franchise not found: ' + franquiaNome)
      }
      
      // Verify the user has access to this franchise
      let hasAccess = false
      
      if (roles.includes('super_admin')) {
        hasAccess = true
      } else if (roles.includes('master_regional')) {
        // Check if this franchise belongs to the master regional
        const { data: masterRegional } = await supabaseClient
          .from('master_regionais')
          .select('id')
          .eq('email', user.email)
          .single()
        
        if (masterRegional && franquia.master_regional_id === masterRegional.id) {
          hasAccess = true
        }
      } else if (roles.includes('franquia')) {
        // Check if this is the user's own franchise
        const { data: userFranquia } = await supabaseClient
          .from('franquias')
          .select('id')
          .eq('email', user.email)
          .single()
        
        if (userFranquia && userFranquia.id === franquia.id) {
          hasAccess = true
        }
      }
      
      if (!hasAccess) {
        throw new Error('User does not have access to franchise: ' + franquiaNome)
      }
      
      franquiaId = franquia.id
      console.log('Found franchise:', franquia.nome, 'Webhook configured:', franquia.webhook)
      
      if (franquia.webhook) {
        webhookUrl = franquia.webhook
      } else {
        // Remove "Franquia:" prefix if present before extracting first name
        const cleanName = franquia.nome.replace(/^Franquia:\s*/i, '')
        const firstName = cleanName.split(' ')[0].toLowerCase()
        webhookUrl = `https://web.strategy-ia.art/webhook/vencidos_${firstName}`
      }
      console.log('Using franchise:', franquia.nome, 'ID:', franquiaId, 'Webhook:', webhookUrl)
    }
    // No specific franchise requested - use default logic based on role
    else if (roles.includes('franquia')) {
      console.log('Processing as franquia user (no specific franchise)')
      const { data: franquia, error: franquiaError } = await supabaseClient
        .from('franquias')
        .select('id, nome, email, webhook')
        .eq('email', user.email)
        .single()

      if (franquiaError) {
        console.error('Error fetching franchise:', franquiaError)
        throw new Error('Franchise not found for user email: ' + user.email)
      }

      if (!franquia) {
        throw new Error('No franchise found for user email: ' + user.email)
      }

      franquiaId = franquia.id
      if (franquia.webhook) {
        webhookUrl = franquia.webhook
      } else {
        const firstName = franquia.nome.split(' ')[0].toLowerCase()
        webhookUrl = `https://web.strategy-ia.art/webhook/vencidos_${firstName}`
      }
      console.log('Franchise user:', franquia.nome, 'ID:', franquiaId, 'Webhook:', webhookUrl)
    }
    // If master_regional role and NOT franquia (and no specific franchise was provided)
    else if (roles.includes('master_regional')) {
      console.log('Processing as master_regional user (no specific franchise)')
      const { data: masterRegional, error: masterError } = await supabaseClient
        .from('master_regionais')
        .select('id, nome, email')
        .eq('email', user.email)
        .single()

      if (masterError || !masterRegional) {
        console.error('Error fetching master regional:', masterError)
        throw new Error('Master regional not found for user email: ' + user.email)
      }

      console.log('Master regional found:', masterRegional.nome, 'ID:', masterRegional.id)

      // First, check if master regional has their own franchise (same email)
      const { data: ownFranquia } = await supabaseClient
        .from('franquias')
        .select('id, nome, webhook')
        .eq('email', user.email)
        .maybeSingle()

      if (ownFranquia) {
        console.log('Master regional has own franchise:', ownFranquia.nome, 'ID:', ownFranquia.id)
        franquiaId = ownFranquia.id
        if (ownFranquia.webhook) {
          webhookUrl = ownFranquia.webhook
        } else {
          const cleanName = ownFranquia.nome.replace(/^Franquia:\s*/i, '')
          const firstName = cleanName.split(' ')[0].toLowerCase()
          webhookUrl = `https://web.strategy-ia.art/webhook/vencidos_${firstName}`
        }
      } else {
        console.log('Master regional does not have own franchise, checking associated franchises')
        // If no own franchise, get franchises under their management
        const { data: franquias, error: franquiasError } = await supabaseClient
          .from('franquias')
          .select('id, nome, webhook')
          .eq('master_regional_id', masterRegional.id)
          .limit(1)

        console.log('Franchises found for master regional:', franquias?.length || 0)

        if (franquiasError) {
          console.error('Error fetching franchises:', franquiasError)
          throw new Error('Error fetching franchises for master regional')
        }

        if (!franquias || franquias.length === 0) {
          throw new Error('No franchises found for this master regional: ' + masterRegional.nome + '. Please register a franchise first.')
        }

        franquiaId = franquias[0].id
        if (franquias[0].webhook) {
          webhookUrl = franquias[0].webhook
        } else {
          const cleanName = franquias[0].nome.replace(/^Franquia:\s*/i, '')
          const firstName = cleanName.split(' ')[0].toLowerCase()
          webhookUrl = `https://web.strategy-ia.art/webhook/vencidos_${firstName}`
        }
        console.log('Master regional user, using managed franchise:', franquias[0].nome, 'ID:', franquiaId)
      }
    }
    // If super admin only (without specific franchise - this shouldn't happen normally)
    else if (roles.includes('super_admin')) {
      console.log('Processing as super_admin user without specific franchise')
      throw new Error('Super admin must specify franchise name')
    }
    else {
      console.error('User does not have required role. Roles:', roles)
      throw new Error('User does not have required role (franquia, master_regional, or super_admin)')
    }

    if (!franquiaId) {
      throw new Error('Could not determine franchise ID')
    }

    console.log('Calling webhook:', webhookUrl)

    // Call the webhook
    let webhookResponse: Response | null = null
    let webhookFailed = false
    
    try {
      webhookResponse = await fetch(webhookUrl, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
      })

      if (!webhookResponse.ok) {
        console.warn('Webhook returned status:', webhookResponse.status, '- falling back to database data')
        webhookFailed = true
      }
    } catch (fetchError) {
      console.warn('Webhook fetch failed:', fetchError, '- falling back to database data')
      webhookFailed = true
    }

    // If webhook failed (404, network error, etc.), return existing database data
    if (webhookFailed) {
      console.log('Webhook unavailable - returning existing database data for franchise:', franquiaId)
      
      const { data: payments, error: paymentsError } = await supabaseClient
        .from('payments')
        .select('*')
        .eq('franquia_id', franquiaId)
        .order('due_date', { ascending: false })

      if (paymentsError) throw paymentsError

      const { data: customers, error: customersError } = await supabaseClient
        .from('customers')
        .select('*')
        .eq('franquia_id', franquiaId)

      if (customersError) throw customersError

      console.log(`Returning ${payments?.length || 0} existing payments for franchise ${franquiaId}`)

      return new Response(
        JSON.stringify({
          success: true,
          payments: payments || [],
          customers: customers || [],
          stats: {
            paymentsProcessed: 0,
            customersProcessed: 0,
            message: 'Webhook indisponível - exibindo dados existentes'
          }
        }),
        {
          headers: { ...corsHeaders, 'Content-Type': 'application/json' },
          status: 200,
        }
      )
    }

    // Parse webhook response - handle empty responses
    let webhookData: any = null
    try {
      const responseText = await webhookResponse!.text()
      console.log('Webhook response text length:', responseText?.length || 0)
      if (responseText && responseText.trim()) {
        webhookData = JSON.parse(responseText)
      }
    } catch (parseError) {
      console.error('Error parsing webhook response:', parseError)
      webhookData = null
    }
    
    console.log('Webhook response received')
    console.log('Response type:', typeof webhookData)
    console.log('Is array:', Array.isArray(webhookData))
    console.log('Length:', webhookData?.length)
    if (webhookData) {
      console.log('Response preview:', JSON.stringify(webhookData).substring(0, 500))
    }

    let paymentsData: Payment[] = []
    let customersData: Customer[] = []
    
    // Handle empty array or null response - this is valid (no overdue payments)
    if (!webhookData || (Array.isArray(webhookData) && webhookData.length === 0)) {
      console.log('Webhook returned empty data - no overdue payments found')
      // Return existing data from database instead of throwing error
      const { data: payments, error: paymentsError } = await supabaseClient
        .from('payments')
        .select('*')
        .order('due_date', { ascending: false })

      if (paymentsError) throw paymentsError

      const { data: customers, error: customersError } = await supabaseClient
        .from('customers')
        .select('*')

      if (customersError) throw customersError

      return new Response(
        JSON.stringify({
          success: true,
          payments,
          customers,
          stats: {
            paymentsProcessed: 0,
            customersProcessed: 0,
            message: 'Nenhuma cobrança vencida encontrada no webhook'
          }
        }),
        {
          headers: { ...corsHeaders, 'Content-Type': 'application/json' },
          status: 200,
        }
      )
    }
    
    if (Array.isArray(webhookData) && webhookData.length > 0) {
      const firstElement = webhookData[0]
      console.log('First element keys:', Object.keys(firstElement || {}))
      console.log('First element object type:', firstElement?.object)
      
      // Check if it's the new format: direct array of payments with embedded customer data
      if (firstElement?.object === 'payment') {
        console.log('Processing direct payment array format with embedded customer data')
        paymentsData = webhookData
        
        // Extract unique customer data from payments
        const customersMap = new Map<string, Customer>()
        webhookData.forEach((payment: any) => {
          if (payment.customer && !customersMap.has(payment.customer)) {
            customersMap.set(payment.customer, {
              id: payment.customer,
              dateCreated: payment.dateCreated,
              name: payment.name || 'Nome não informado',
              email: payment.email || '',
              mobilePhone: payment.mobilePhone || '',
              cpfCnpj: payment.cpfCnpj,
              personType: payment.personType,
              cityName: payment.cityName,
              state: payment.state,
              country: payment.country || 'Brasil'
            })
          }
        })
        customersData = Array.from(customersMap.values())
        console.log('Extracted', paymentsData.length, 'payments and', customersData.length, 'unique customers')
      }
      // Check for old format: [{ object: "list", data: [...] }]
      else if (firstElement?.object === 'list' && Array.isArray(firstElement?.data)) {
        paymentsData = firstElement.data
        console.log('Extracted', paymentsData.length, 'payments from list format')
        
        if (webhookData.length > 1 && webhookData[1]?.object === 'list' && Array.isArray(webhookData[1]?.data)) {
          customersData = webhookData[1].data
          console.log('Extracted', customersData.length, 'customers from list format')
        }
      }
      // Try to detect other formats
      else if (firstElement?.id && firstElement?.dueDate && firstElement?.value !== undefined) {
        console.log('Detected payment-like objects without object field')
        paymentsData = webhookData
        
        // Extract customer data
        const customersMap = new Map<string, Customer>()
        webhookData.forEach((payment: any) => {
          const customerId = payment.customer || payment.customerId
          if (customerId && !customersMap.has(customerId)) {
            customersMap.set(customerId, {
              id: customerId,
              dateCreated: payment.dateCreated || new Date().toISOString().split('T')[0],
              name: payment.name || payment.customerName || 'Nome não informado',
              email: payment.email || '',
              mobilePhone: payment.mobilePhone || payment.phone || '',
              cpfCnpj: payment.cpfCnpj || customerId,
              personType: payment.personType || 'FISICA',
              cityName: payment.cityName || null,
              state: payment.state || null,
              country: payment.country || 'Brasil'
            })
          }
        })
        customersData = Array.from(customersMap.values())
        console.log('Extracted', paymentsData.length, 'payments and', customersData.length, 'unique customers from detected format')
      }
      else {
        console.error('Unknown webhook response format. First element:', JSON.stringify(firstElement).substring(0, 300))
      }
    }

    if (paymentsData.length === 0) {
      console.log('No payments found in webhook response - returning existing data for franchise:', franquiaId)
      // Return existing data from database for this specific franchise
      const { data: payments, error: paymentsError } = await supabaseClient
        .from('payments')
        .select('*')
        .eq('franquia_id', franquiaId)
        .order('due_date', { ascending: false })

      if (paymentsError) throw paymentsError

      const { data: customers, error: customersError } = await supabaseClient
        .from('customers')
        .select('*')
        .eq('franquia_id', franquiaId)

      if (customersError) throw customersError

      console.log(`Returning ${payments?.length || 0} existing payments for franchise ${franquiaId}`)

      return new Response(
        JSON.stringify({
          success: true,
          payments,
          customers,
          stats: {
            paymentsProcessed: 0,
            customersProcessed: 0,
            message: 'Webhook respondeu vazio - sem novas cobranças'
          }
        }),
        {
          headers: { ...corsHeaders, 'Content-Type': 'application/json' },
          status: 200,
        }
      )
    }

    console.log(`Processing ${paymentsData.length} payments and ${customersData.length} customers`)

    // Create a Set to track unique customer IDs we need
    const uniqueCustomerIds = new Set<string>()
    paymentsData.forEach((payment: Payment) => {
      if (payment.customer) {
        uniqueCustomerIds.add(payment.customer)
      }
    })

    // Upsert customers first (to avoid foreign key issues)
    // Associate customers with the franchise
    for (const customer of customersData) {
      const { error: customerError } = await supabaseClient
        .from('customers')
        .upsert({
          id: customer.id,
          date_created: customer.dateCreated,
          name: customer.name,
          email: customer.email,
          mobile_phone: customer.mobilePhone,
          cpf_cnpj: customer.cpfCnpj,
          person_type: customer.personType,
          city_name: customer.cityName,
          state: customer.state,
          country: customer.country,
          franquia_id: franquiaId,
          updated_at: new Date().toISOString(),
        }, {
          onConflict: 'id'
        })

      if (customerError) {
        console.error('Error upserting customer:', customer.id, customerError)
      }
      uniqueCustomerIds.delete(customer.id)
    }

    // For any customer IDs that don't have data yet, create placeholder records
    for (const customerId of uniqueCustomerIds) {
      const { error: customerError } = await supabaseClient
        .from('customers')
        .upsert({
          id: customerId,
          date_created: new Date().toISOString().split('T')[0],
          name: 'Cliente (dados pendentes)',
          email: '',
          mobile_phone: '',
          cpf_cnpj: customerId,
          person_type: 'FISICA',
          country: 'Brasil',
          franquia_id: franquiaId,
          updated_at: new Date().toISOString(),
        }, {
          onConflict: 'id'
        })

      if (customerError) {
        console.error('Error creating placeholder customer:', customerId, customerError)
      }
    }

    console.log(`Processed ${customersData.length} customers with data, created ${uniqueCustomerIds.size} placeholders`)

    // Upsert payments and associate with franchise
    let successfulPayments = 0
    let failedPayments = 0
    for (const payment of paymentsData) {
      const paymentData = {
        id: payment.id,
        date_created: payment.dateCreated,
        customer_id: payment.customer,
        subscription: payment.subscription,
        value: payment.value,
        net_value: payment.netValue,
        description: payment.description,
        billing_type: payment.billingType,
        status: payment.status,
        due_date: payment.dueDate,
        original_due_date: payment.originalDueDate,
        payment_date: payment.paymentDate,
        invoice_url: payment.invoiceUrl,
        invoice_number: payment.invoiceNumber,
        bank_slip_url: payment.bankSlipUrl,
        nosso_numero: payment.nossoNumero,
        discount: payment.discount,
        fine: payment.fine,
        interest: payment.interest,
        franquia_id: franquiaId,
        updated_at: new Date().toISOString(),
      }
      
      const { error: paymentError } = await supabaseClient
        .from('payments')
        .upsert(paymentData, {
          onConflict: 'id'
        })

      if (paymentError) {
        console.error('Error upserting payment:', payment.id, 'Error:', JSON.stringify(paymentError))
        failedPayments++
      } else {
        successfulPayments++
      }
    }

    console.log(`Processed ${paymentsData.length} payments: ${successfulPayments} successful, ${failedPayments} failed`)
    console.log(`Franchise ID used for upsert: ${franquiaId}`)

    // Fetch updated data from database for this specific franchise
    const { data: payments, error: paymentsError } = await supabaseClient
      .from('payments')
      .select('*')
      .eq('franquia_id', franquiaId)
      .order('due_date', { ascending: false })

    if (paymentsError) {
      throw paymentsError
    }

    const { data: customers, error: customersError } = await supabaseClient
      .from('customers')
      .select('*')
      .eq('franquia_id', franquiaId)

    if (customersError) {
      throw customersError
    }

    console.log(`Returning ${payments?.length || 0} payments for franchise ${franquiaId}`)

    return new Response(
      JSON.stringify({
        success: true,
        payments,
        customers,
        stats: {
          paymentsProcessed: paymentsData.length,
          customersProcessed: customersData.length,
        }
      }),
      {
        headers: { ...corsHeaders, 'Content-Type': 'application/json' },
        status: 200,
      }
    )
  } catch (error) {
    console.error('Error in fetch-payments function:', error)
    const errorMessage = error instanceof Error ? error.message : 'Unknown error'
    return new Response(
      JSON.stringify({
        error: errorMessage,
      }),
      {
        headers: { ...corsHeaders, 'Content-Type': 'application/json' },
        status: 400,
      }
    )
  }
})