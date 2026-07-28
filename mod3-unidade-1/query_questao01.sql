-- Calcule o preço médio das ações, nomeando este campo como mean, e a amplitude diária de variação, que será chamada de range, para o período de 20 de fevereiro de 2020 a 20 de março de 2020. Mostre apenas os dados dos dias com variação positiva. O preço médio pode ser calculado utilizando a fórmula (Close + Open)/2, enquanto a amplitude de variação é obtida por meio da diferença Close - Open.

SELECT "date"
	   "close"-"open" as range
	   ('close'+"open") / 2 as 'mean'
FROM petrobras 
WHERE "date" BETWEEN '2020-02-20' AND "2020-03-20"
AND "range" > 0