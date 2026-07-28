-- Indique a expectativa de vida mínima, média e máxima dos países da América Latina e do Caribe em 1990. Use a tabela life_expectancy para encontrar os valores e o campo wb_regions com o valor Latin America & Caribbean para definir a região.

SELECT c.country,
	   MIN(le.tot_years) AS 'MIN years',
	   AVG (le.tot_years) AS 'AVG years', 
	   MAX (le.tot_years) AS 'MAX years'
FROM country c 
JOIN life_expectancy le ON c.country = le.country 
WHERE c.wb_regions = 'Latin America & Caribbean'
AND le.ref_year = 1990

