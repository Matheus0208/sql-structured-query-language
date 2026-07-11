-- Selecione, apenas para o Brasil, os dados de renda per capita diária, PIB, população, mortalidade infantil, fertilidade e expectativa de vida, abrangendo o período de 1900 a 2020, a cada 10 anos (1900, 1910, 1920, ..., 2020), utilizando a cláusula NATURAL JOIN. Confira se os resultados foram iguais aos obtidos na questão 3.

SELECT ai.country,
	   ai.mean_usd,
	   ai.ref_year,
	   gd.gdp_pc,
	   p.tot_pop,
	   cm.tot_deaths,
	   f.mean_babies,
	   le.tot_years 
FROM avg_income AS ai 
NATURAL JOIN gdp_pc AS gd
NATURAL JOIN population AS p
NATURAL JOIN child_mortality AS cm
NATURAL JOIN fertility AS f
NATURAL JOIN life_expectancy AS le 
WHERE ai.country = 'Brazil'
AND ai.ref_year IN (1900,1910,1920,1930,1940,1950,1960,1970,1980,1990,2000,2010,2020)
ORDER BY ai.ref_year;