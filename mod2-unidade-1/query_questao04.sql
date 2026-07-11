-- A partir da tabela country, com o campo four_regions igual a asia, e da tabela man_years_at_school, encontre os cinco países asiáticos cujos homens de 25 anos passaram menos tempo na escola em 2009, utilizando a cláusula NATURAL JOIN. Confira se os resultados foram iguais aos obtidos na questão 1.

SELECT *
FROM country AS c 
NATURAL JOIN men_years_at_school AS myas 
WHERE c.four_regions = 'asia'
AND myas.ref_year = 2009
ORDER BY myas.mean_years 
LIMIT 5