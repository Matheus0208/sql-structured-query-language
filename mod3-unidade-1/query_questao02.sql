-- Identifique os países da África nos quais as mulheres possuem pelo menos um ano a mais de escolaridade do que os homens durante o período de 2001 a 2010. Apresente apenas os nomes dos países, sem repetições.

SELECT DISTINCT m.country
FROM men_years_at_school m
JOIN women_years_at_school w ON  m.country = w.country
AND m.ref_year = w.ref_year 
JOIN country c ON m.country = c.country 
WHERE c.four_regions = 'africa'
AND w.mean_years - m.mean_years <= 1
AND w.ref_year BETWEEN 2001 AND 2010