-- Utilizando a tabela country, selecione os países do continente asiático segundo a classificação de oito regiões (coluna eight_regions). Além da coluna country, traga as colunas eight_regions e wb_regions para comparação.

SELECT country, eight_regions, wb_regions 
FROM country
WHERE eight_regions LIKE '%Asia%';

