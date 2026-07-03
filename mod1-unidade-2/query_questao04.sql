-- Utilizando a tabela life_expectancy e o campo tot_years, indique qual a expectativa de vida do brasileiro nos anos de 2019 a 2023. Liste os valores, observe o que ocorreu e comente as prováveis causas.

SELECT *
FROM life_expectancy
WHERE ref_year BETWEEN 2019 AND 2023
AND country = 'Brazil'