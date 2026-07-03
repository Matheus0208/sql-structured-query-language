-- Selecione os cinco últimos países distintos, na ordem alfabética, da tabela population.

SELECT DISTINCT country 
FROM population 
ORDER BY country DESC 
LIMIT 5
