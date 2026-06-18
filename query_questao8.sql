--Utilizando a tabela life_expectancy, indique os dois países que têm projeção de expectativa de vida acima de 94 anos.

SELECT *
FROM life_expectancy
WHERE tot_years > 94;