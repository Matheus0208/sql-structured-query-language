-- Atualize os valores nulos do Brasil na tabela men_years_at_school, definindo o mesmo valor de 2018 (7,8) para os anos de 2019 e 2020. Certifique-se de especificar o país na cláusula WHERE para evitar a atualização dos dados da Argentina. Em seguida, execute um SELECT * para o Brasil entre 2009 e 2020 para verificar o resultado.

UPDATE men_years_at_school
SET mean_years = '7,8'
WHERE country = 'Brazil'
AND ref_year BETWEEN 2019 AND 2020

SELECT *
FROM men_years_at_school
WHERE country = 'Brazil' 
AND ref_year BETWEEN 2009 AND 2020

