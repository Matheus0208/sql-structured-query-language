-- Sem apresentar linhas nulas, indique quais são as categorias do campo wb4income da tabela country.

SELECT DISTINCT wb4income
FROM country
WHERE wb4income IS NOT NULL  
ORDER BY wb4income;
