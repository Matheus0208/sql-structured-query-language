-- Calcule novamente a expectativa de vida mínima, média e máxima dos países da América Latina e do Caribe em 1990 bem como identifique o país com a menor expectativa de vida nessa região no mesmo ano.

SELECT le.country
FROM life_expectancy le 
JOIN country c  ON le.country = c.country 
WHERE le.tot_years = (SELECT MIN(le2.tot_years)
					  FROM life_expectancy le2 
					  JOIN country c2 ON le2.country = c2.country 
					  WHERE le2.ref_year = 1990
					  AND c2.wb_regions = 'Latin America & Caribbean'
					  GROUP BY le2.ref_year )
AND le.ref_year = 1990
AND c.wb_regions = 'Latin America & Caribbean'