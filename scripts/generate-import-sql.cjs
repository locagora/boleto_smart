const fs = require('fs');
const path = require('path');

// Read the franchisees.md file
const filePath = path.join(__dirname, '..', 'franchisees.md');
const content = fs.readFileSync(filePath, 'utf-8');

// Parse the markdown table
const lines = content.split('\n');
const dataLines = lines.filter(line => line.startsWith('|') && !line.includes('---') && !line.includes('CNPJ') && !line.includes('Razão Social'));

// Extract unique masters
const masters = new Set();
const franquias = [];

// Valid master slugs (only valid ones, not emails or invalid data)
const validMasterSlugs = new Set([
  'barueri', 'belo-horizontee', 'braganca-paulista', 'brasilia', 'campinas',
  'caninde', 'copacabana', 'cuiaba', 'curitiba', 'feira-de-santana',
  'floramar', 'floresta', 'florianpolis', 'fortaleza', 'freguesia-do-o',
  'goiania', 'joao-pessoa', 'joinville', 'limao', 'maceio', 'manaus',
  'porto-alegre', 'recife', 'ribeirao-preto', 'rio-de-janeiro', 'salvador',
  'sao-luiz-do-maranhao', 'sorocaba', 'tatuape', 'teresina'
]);

dataLines.forEach(line => {
  const cols = line.split('|').map(c => c.trim()).filter(c => c);
  if (cols.length >= 5) {
    const cnpj = cols[0];
    const razaoSocial = cols[1];
    const cityId = cols[2];
    const master = cols[3];
    const email = cols[4] || '';
    const whatsapp1 = cols[5] || '';
    const whatsapp2 = cols[6] || '';
    const cpf = cols[7] || '';
    const endereco = cols[8] || '';

    // Only add valid master slugs (not emails or invalid data)
    if (master && master.length > 0 && validMasterSlugs.has(master)) {
      masters.add(master);
    }

    // Only add franquias with valid masters
    if (cnpj && razaoSocial && validMasterSlugs.has(master)) {
      franquias.push({
        cnpj: cnpj.replace(/\D/g, ''), // Remove non-digits
        razaoSocial,
        master,
        email,
        telefone: whatsapp1,
        endereco
      });
    }
  }
});

// Generate master names from slugs
function slugToName(slug) {
  const nameMap = {
    'rio-de-janeiro': 'Master Rio de Janeiro',
    'caninde': 'Master Canindé',
    'cuiaba': 'Master Cuiabá',
    'curitiba': 'Master Curitiba',
    'fortaleza': 'Master Fortaleza',
    'joinville': 'Master Joinville',
    'porto-alegre': 'Master Porto Alegre',
    'copacabana': 'Master Copacabana',
    'ribeirao-preto': 'Master Ribeirão Preto',
    'campinas': 'Master Campinas',
    'feira-de-santana': 'Master Feira de Santana',
    'floramar': 'Master Floramar',
    'teresina': 'Master Teresina',
    'goiania': 'Master Goiânia',
    'joao-pessoa': 'Master João Pessoa',
    'tatuape': 'Master Tatuapé',
    'brasilia': 'Master Brasília',
    'maceio': 'Master Maceió',
    'barueri': 'Master Barueri',
    'salvador': 'Master Salvador',
    'recife': 'Master Recife',
    'belo-horizontee': 'Master Belo Horizonte',
    'floresta': 'Master Floresta',
    'florianpolis': 'Master Florianópolis',
    'freguesia-do-o': 'Master Freguesia do Ó',
    'limao': 'Master Limão',
    'manaus': 'Master Manaus',
    'braganca-paulista': 'Master Bragança Paulista',
    'sao-luiz-do-maranhao': 'Master São Luís do Maranhão',
    'sorocaba': 'Master Sorocaba'
  };
  return nameMap[slug] || `Master ${slug.split('-').map(w => w.charAt(0).toUpperCase() + w.slice(1)).join(' ')}`;
}

// Escape SQL string
function escapeSQL(str) {
  if (!str) return '';
  return str.replace(/'/g, "''").replace(/\\/g, '\\\\');
}

// Format CNPJ
function formatCNPJ(cnpj) {
  const digits = cnpj.replace(/\D/g, '');
  if (digits.length === 14) {
    return `${digits.slice(0,2)}.${digits.slice(2,5)}.${digits.slice(5,8)}/${digits.slice(8,12)}-${digits.slice(12)}`;
  }
  return digits;
}

// Generate SQL
let sql = `-- Migration: Import Masters and Franquias from franchisees.md
-- Generated at: ${new Date().toISOString()}
-- Total Masters: ${masters.size}
-- Total Franquias: ${franquias.length}

-- =====================================================
-- STEP 1: Create Master Regionais
-- =====================================================

`;

// Create masters
const mastersArray = Array.from(masters).sort();
mastersArray.forEach((slug, index) => {
  const name = slugToName(slug);
  const placeholderCNPJ = `00.000.000/0${String(index + 1).padStart(3, '0')}-00`;
  const placeholderEmail = `${slug}@master.placeholder.com`;

  sql += `INSERT INTO public.master_regionais (nome, razao_social, cnpj, endereco, email, telefone)
VALUES ('${escapeSQL(name)}', '${escapeSQL(name)}', '${placeholderCNPJ}', 'A definir', '${placeholderEmail}', '')
ON CONFLICT (cnpj) DO NOTHING;\n\n`;
});

sql += `
-- =====================================================
-- STEP 2: Create Franquias
-- =====================================================

`;

// Track used emails to generate unique ones
const usedEmails = new Set();

// Create franquias
franquias.forEach((f, index) => {
  if (!f.cnpj || f.cnpj.length < 8) return; // Skip invalid CNPJs

  const masterName = slugToName(f.master);
  const formattedCNPJ = formatCNPJ(f.cnpj);

  // Generate unique email if duplicate
  let email = f.email || '';
  if (email && usedEmails.has(email.toLowerCase())) {
    // Add CNPJ suffix to make it unique
    const emailParts = email.split('@');
    if (emailParts.length === 2) {
      email = `${emailParts[0]}+${f.cnpj.substring(0, 8)}@${emailParts[1]}`;
    } else {
      email = `${email}+${f.cnpj.substring(0, 8)}`;
    }
  }
  if (email) {
    usedEmails.add(email.toLowerCase());
  }

  // Use a subquery to get the master_regional_id
  sql += `INSERT INTO public.franquias (nome, razao_social, cnpj, endereco, email, telefone, master_regional_id, ativo)
SELECT
  '${escapeSQL(f.razaoSocial.substring(0, 100))}',
  '${escapeSQL(f.razaoSocial.substring(0, 100))}',
  '${escapeSQL(formattedCNPJ)}',
  '${escapeSQL(f.endereco || 'A definir')}',
  '${escapeSQL(email)}',
  '${escapeSQL(f.telefone)}',
  m.id,
  false
FROM public.master_regionais m
WHERE m.nome = '${escapeSQL(masterName)}'
ON CONFLICT (cnpj) DO NOTHING;\n\n`;
});

sql += `
-- =====================================================
-- VERIFICATION
-- =====================================================
SELECT 'Masters created:' as info, COUNT(*) as count FROM public.master_regionais;
SELECT 'Franquias created:' as info, COUNT(*) as count FROM public.franquias;
`;

// Write the SQL file
const outputPath = path.join(__dirname, '..', 'supabase', 'migrations', '20251215100000_import_masters_franquias.sql');
fs.writeFileSync(outputPath, sql);

console.log(`Migration generated successfully!`);
console.log(`Masters: ${masters.size}`);
console.log(`Franquias: ${franquias.length}`);
console.log(`Output: ${outputPath}`);
