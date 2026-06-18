--Selecione todas as linhas da tabela petrobras com o valor de Close diferente de Adj Close. Indique se este evento aconteceu no dia 16 de agosto de 2000.

SELECT *
FROM petrobras
WHERE Close <> "Adj Close" 
AND Date = '2000-08-16'