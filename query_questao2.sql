-- Selecione, da tabela country, a classificação de quatro e oito regiões e das quatro categorias de renda do Banco Mundial para o Brasil.

SELECT country, four_regions, eight_regions, wb_regions, wb4income, wb3income 
FROM country
WHERE country = 'Brazil';