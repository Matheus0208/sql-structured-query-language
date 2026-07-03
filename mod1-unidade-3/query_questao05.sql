-- Utilizando a tabela womem_years_at_school, selecione os países com menor tempo médio na escola das mulheres de 25 anos em 2009.

SELECT *
FROM women_years_at_school
WHERE ref_year = 2009
ORDER BY mean_years DESC;	

