-- Remova as linhas do Brasil na tabela men_years_at_school em que a data seja maior ou igual a 2019. Em seguida, execute um SELECT * para o Brasil nos anos de 2018 a 2020 para verificar o resultado.

DELETE 
FROM men_years_at_school 
WHERE country = 'Brazil'
AND ref_year BETWEEN 2010 AND 2018

SELECT *
FROM men_years_at_school 
WHERE country = 'Brazil'
AND ref_year BETWEEN 2009 AND 2020
