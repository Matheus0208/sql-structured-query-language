-- Calcule o PIB per capita médio e a renda per capita média dos países no ano de 2019. Utilize as tabelas avg_income e gdp_pc, e arredonde o resultado para duas casas decimais.

SELECT AVG (gp.gdp_pc) AS 'AVG gdp_pc', 
	   AVG (ai.mean_usd) AS 'AVG mean_usd'
FROM avg_income ai 
JOIN gdp_pc gp ON ai.country = gp.country 
AND ai.ref_year = gp.ref_year
WHERE ai.ref_year = 2019
