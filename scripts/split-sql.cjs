const fs = require('fs');
const path = require('path');

// Read the full migration file
const migrationPath = path.join(__dirname, '..', 'supabase', 'migrations', '20251215100000_import_masters_franquias.sql');
const content = fs.readFileSync(migrationPath, 'utf-8');

const outputDir = path.join(__dirname, '..', 'supabase', 'sql-parts');

// Find the split point between masters and franquias
const franquiasStart = content.indexOf('-- STEP 2: Create Franquias');

// Extract masters section (everything before franquias)
const mastersSection = content.substring(0, franquiasStart).trim();

// Extract franquias section (from the comment to the verification queries)
const verificationStart = content.indexOf('-- VERIFICATION');
const franquiasSection = content.substring(franquiasStart, verificationStart).trim();

// Split franquias by complete INSERT statements
const franquiaInserts = franquiasSection.split(/(?=INSERT INTO public\.franquias)/g)
  .filter(s => s.trim().startsWith('INSERT'));

console.log(`Total franquias inserts: ${franquiaInserts.length}`);

// Write masters file
const mastersFile = `${mastersSection}

-- Verificar masters criados
SELECT 'Masters criados:' as info, COUNT(*) as total FROM public.master_regionais;
`;
fs.writeFileSync(path.join(outputDir, 'part1_masters.sql'), mastersFile);
console.log('Created part1_masters.sql');

// Split franquias into chunks of 200
const chunkSize = 200;
let partNum = 2;
for (let i = 0; i < franquiaInserts.length; i += chunkSize) {
  const chunk = franquiaInserts.slice(i, Math.min(i + chunkSize, franquiaInserts.length));
  const startNum = i + 1;
  const endNum = Math.min(i + chunkSize, franquiaInserts.length);

  let fileContent = `-- Franquias ${startNum} a ${endNum}\n`;
  fileContent += `-- Parte ${partNum} de ${Math.ceil(franquiaInserts.length / chunkSize) + 1}\n\n`;
  fileContent += chunk.join('\n');
  fileContent += `\n\n-- Verificar franquias criadas até agora\nSELECT 'Franquias criadas:' as info, COUNT(*) as total FROM public.franquias;\n`;

  const fileName = `part${partNum}_franquias_${startNum}-${endNum}.sql`;
  fs.writeFileSync(path.join(outputDir, fileName), fileContent);
  console.log(`Created ${fileName}`);
  partNum++;
}

console.log('\nArquivos criados com sucesso!');
console.log('Execute na ordem: part1 -> part2 -> part3 -> part4 -> part5 -> part6');
