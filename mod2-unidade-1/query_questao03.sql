-- Selecione, apenas para o Brasil, os dados de renda per capita diária, PIB, população, mortalidade infantil, fertilidade e expectativa de vida, abrangendo o período de 1900 a 2020, a cada 10 anos (1900, 1910, 1920, ..., 2020).

SELECT ai.ref_year,
	   ai.mean_usd,
	   p.tot_pop,
	   cm.tot_deaths,
	   f.mean_babies,
	   le.tot_years 
FROM avg_income ai 
JOIN gdp_pc gp ON ai.country = gp.country 
	AND ai.ref_year = gp.ref_year
JOIN population p ON ai.country = p.country 
	AND ai.ref_year = p.ref_year
JOIN child_mortality cm ON ai.country = cm.country 
	AND ai.ref_year = cm.ref_year
JOIN fertility f ON ai.country = f.country 
	AND ai.ref_year = f.ref_year
JOIN life_expectancy le ON ai.country = le.country 
	AND ai.ref_year = le.ref_year
WHERE ai.country = 'Brazil'
AND ai.ref_year in (1900, 1910, 1920, 1930, 1940, 1950, 1960, 1970, 1980, 1990, 2000, 2010,2020)
ORDER BY ai.ref_year;