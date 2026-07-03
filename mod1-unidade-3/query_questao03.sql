-- Utilizando a tabela fertility, encontre os países com maior taxa de natalidade em 2009.

SELECT * 
FROM fertility
WHERE ref_year = 2009
ORDER BY mean_babies DESC 
LIMIT 10

