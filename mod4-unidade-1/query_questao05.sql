-- Remova as linhas do Brasil na tabela men_years_at_school que têm datas entre 2010 e 2018. Em seguida, realize um SELECT * para o Brasil, abrangendo os anos de 2009 a 2020, para verificar o resultado.

DELETE 
FROM men_years_at_school 
WHERE country = 'Brazil'
AND ref_year BETWEEN 2010 AND 2018

SELECT *
FROM men_years_at_school 
WHERE country = 'Brazil'
AND ref_year BETWEEN 2009 AND 2020


