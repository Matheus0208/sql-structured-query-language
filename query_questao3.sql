-- Selecione, da tabela country, o nome de todos os países com a classificação de renda do Banco Mundial em três níveis (coluna wb3income) igual a Middle income. Indique se a China, a Indonésia e a Malásia estão na lista.

SELECT country, four_regions, eight_regions, wb3income 
FROM country
WHERE wb3income  = 'Middle income';