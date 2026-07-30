-- Identifique as regiões, conforme a classificação do Banco Mundial (campo wb_regions da tabela country), que em 2010 apresentaram uma média das taxas de mortalidade infantil consideradas baixas, de acordo com o Ministério da Saúde, ou seja, inferiores a 20. Para isso, utilize a tabela child_mortality e o campo tot_deaths, aplicando a cláusula HAVING.

SELECT c.wb_regions, 
	   AVG(cm.tot_deaths) AS avg_deaths
FROM child_mortality cm
JOIN country c ON cm.country = c.country 
WHERE cm.ref_year = 2010 
GROUP BY c.wb_regions
ORDER BY avg_deaths < 20; 