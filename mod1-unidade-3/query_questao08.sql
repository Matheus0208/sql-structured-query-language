-- Utilizando a tabela life_expectancy, encontre os seis países com a menor expectativa de vida em 2009.

SELECT *
FROM life_expectancy
WHERE ref_year = 2009
ORDER BY tot_years 	
LIMIT 10;
