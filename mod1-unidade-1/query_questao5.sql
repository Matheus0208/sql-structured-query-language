-- Selecione, da tabela life_expectancy, os países e anos de referência cuja expectativa de vida ao nascer era de 36.5 anos. Indique quais foram os anos em que os nascidos no Chile tinham esta expectativa de vida.

SELECT *
FROM life_expectancy
WHERE country = 'Chile'
AND tot_years = 36.5