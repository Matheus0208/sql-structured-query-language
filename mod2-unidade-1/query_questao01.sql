-- Utilizando a tabela country, o campo four_regions igual a asia e a tabela man_years_at_school, encontre os cinco países asiáticos cujos homens de 25 anos passaram menos tempo na escola em 2009.


SELECT myas.country,
	   myas.mean_years 
FROM country c 
INNER JOIN men_years_at_school myas ON c.country = myas.country 
WHERE c.four_regions = 'asia' 
AND myas.ref_year = '2009' 
ORDER BY myas.mean_years 
LIMIT 5

