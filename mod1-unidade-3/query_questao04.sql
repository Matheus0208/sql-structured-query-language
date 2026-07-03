-- Utilizando a tabela child_mortality, indique os países com a maior taxa de mortalidade infantil em 2009.

SELECT * 
FROM child_mortality 
WHERE ref_year = 2009
ORDER BY tot_deaths DESC 
LIMIT 10

