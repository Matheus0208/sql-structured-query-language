-- Utilizando a tabela gdp_pc, selecione os países com menor PIB per capita em 2009.

SELECT * 
FROM gdp_pc
WHERE ref_year = 2009
ORDER BY gdp_pc
LIMIT 10

