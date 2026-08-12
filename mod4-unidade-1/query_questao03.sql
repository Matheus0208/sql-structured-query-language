-- Atualize os valores nulos da Argentina na tabela men_years_at_school com a média dos valores de 2011 a 2020. Neste caso, utilize uma subquery para calcular a média, abrangendo o período de 2017 a 2020, e assegure-se de que apenas os valores nulos sejam atualizados. Em seguida, execute um SELECT * para a Argentina no intervalo de 2016 a 2020 para verificar o resultado.

UPDATE men_years_at_school 
SET mean_years = (SELECT AVG(mean_years)
				  FROM men_years_at_school
				  WHERE country = 'Argentina'
				  AND ref_year BETWEEN 2011 AND 2020)
WHERE country = 'Argentina'
AND ref_year BETWEEN 2017 AND 2018
AND mean_years IS NULL

SELECT *
FROM men_years_at_school
WHERE ref_year BETWEEN 2016 AND 2020
AND country = 'Argentina'
