-- Pesquise os países das Américas, segundo a classificação do Banco Mundial (coluna wb_regions), utilizando o operador LIKE.

SELECT country, eight_regions, wb_regions 
FROM country
WHERE wb_regions LIKE '%America%';

