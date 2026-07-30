-- Calcule novamente o PIB per capita médio e a renda per capita média de todos os países no ano de 2019. Agora, você deve segmentar pelas quatro faixas de renda do Banco Mundial (campo wb4income da tabela country). Arredonde os resultados para duas casas decimais e ordene a média do PIB em ordem crescente. Indique se a classificação do Banco Mundial faz sentido tanto para PIB quanto para renda.

SELECT gp.country,
	  ROUND(AVG(gp.gdp_pc ),2)  AS 'Media gdp',
	   ROUND(AVG(ai.mean_usd ),2) AS 'Media mean',
	   c.wb4income 
FROM gdp_pc gp 
JOIN avg_income ai ON gp.country = ai.country 
JOIN country c ON gp.country = c.country 
WHERE ai.ref_year = 2019
GROUP BY c.wb4income 
ORDER BY "Media gdp", "Media mean" DESC 