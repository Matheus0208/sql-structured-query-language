-- Liste o país com a menor renda média per capita diária da Europa em 2020. Use a tabela avg_income e o campo four_regions da tabela country igual a europe.
  
SELECT ai1.country 
FROM avg_income ai1
JOIN country c1 ON ai1.country = c1.country 
WHERE ai1.ref_year = 2020
AND c1.four_regions = 'europe'
AND ai1.mean_usd = (
	SELECT MIN (ai.mean_usd) AS "min"
	FROM avg_income ai
	JOIN country c ON ai.country = c.country 
	WHERE ai.ref_year = 2020
	AND c.four_regions = 'europe'
);
	  								
