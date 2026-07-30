-- Identifique as regiões, conforme a classificação do Banco Mundial (campo wb_regions da tabela country), que em 2010 apresentaram uma média das taxas de mortalidade infantil consideradas baixas, de acordo com o Ministério da Saúde, ou seja, inferiores a 20. Para isso, utilize a tabela child_mortality e o campo tot_deaths, aplicando a cláusula HAVING.

SELECT le.ref_year, 
	   MIN (le.tot_years) AS min_years, 
	   AVG (le.tot_years) AS avg_years,
	   MAX (le.tot_years) AS max_years
FROM life_expectancy le
JOIN country c ON le.country = c.country 
WHERE le.ref_year IN ( 1990, 2000, 2010, 2020) 
AND c.wb_regions = 'Latin America & Caribbean'
GROUP BY le.ref_year
ORDER BY le.ref_year;