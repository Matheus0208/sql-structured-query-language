-- Utilizando o campo wb3income e o campo wb_regions da tabela country, além da tabela avg_income, liste os 10 países de maior renda per capita diária no ano de 1985, além da região e da classificação de três rendas, ambos do Banco Mundial.

SELECT c.wb3income,
	   c.wb_regions,
	   c.country,
	   ai.mean_usd 
FROM country c 
INNER JOIN avg_income ai ON c.country = ai.country 
WHERE ai.ref_year = '1985' 
ORDER BY ai.mean_usd DESC
LIMIT 10


