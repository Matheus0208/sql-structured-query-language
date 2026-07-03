-- Utilizando a tabela population, selecione os países cuja população ultrapassou 200 milhões de habitantes em 2023. Use notação científica para representar a população na consulta e indique a população de cada país selecionado nos resultados.

SELECT *
FROM population
WHERE tot_pop > 200000000
AND ref_year = 2023
