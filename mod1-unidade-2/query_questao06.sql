-- Utilizando a tabela country, selecione os países europeus de renda média baixa. Use a classificação Gapminder de oito regiões geográficas (campo eight_regions com valor europe_east e europe_west), para verificar os países, e a classificação de quatro faixas de renda do Banco Mundial (campo wb4income com o valor Lower middle income), para verificar a renda. Indique se todos os países são do leste europeu.

SELECT *
FROM co2_emissions_pc
WHERE ref_year BETWEEN 2019 AND 2021
AND country IN ('Brazil', 'China', 'EUA')

