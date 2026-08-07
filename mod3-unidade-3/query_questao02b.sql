-- Repita a consulta para 2010, incluindo também o valor de tot_years. Indique se o país com a menor expectativa de vida permanece o mesmo. Além disso, verifique se há alguma explicação para uma queda tão acentuada na expectativa de vida.

SELECT le.country, le.tot_years 
FROM life_expectancy le 
JOIN country c  ON le.country = c.country 
WHERE le.tot_years = (SELECT MIN(le2.tot_years)
					  FROM life_expectancy le2 
					  JOIN country c2 ON le2.country = c2.country 
					  WHERE le2.ref_year = 2010
					  AND c2.wb_regions = 'Latin America & Caribbean'
					  GROUP BY le2.ref_year )
AND le.ref_year = 2010
AND c.wb_regions = 'Latin America & Caribbean'