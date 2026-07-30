-- Calcule a renda máxima, a média e a mínima dos países enquadrados em cada uma das três classificações de renda do Banco Mundial (campo wb3income da tabela country) no ano de 2020. Ordene pela média da renda e utilize a tabela avg_income. Indique se os valores estão de acordo com a classificação.

SELECT c.wb3income,
	   MAX(ai.mean_usd) AS 'Renda Maxima',
	   AVG(ai.mean_usd) AS 'Renda Media',
	   MIN(ai.mean_usd) AS  'Renda Minima'
FROM avg_income ai 
JOIN country c ON ai.country = c.country 
WHERE ai.ref_year = 2020
GROUP BY c.wb3income 
ORDER BY "Renda Media" DESC
