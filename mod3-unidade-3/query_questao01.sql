-- Calcule qual é o país da África com maior PIB per capita em 2019.

SELECT gp.country
FROM gdp_pc gp
JOIN country c ON gp.country = c.country 
WHERE gp.ref_year = 2019
AND c.four_regions = 'africa'
AND gp.gdp_pc = (SELECT MAX(gp2.gdp_pc) 
				 FROM gdp_pc gp2
				 JOIN country c2 ON gp2.country = c2.country 
				 WHERE gp2.ref_year  = 2019
				 AND c2.four_regions = 'africa')