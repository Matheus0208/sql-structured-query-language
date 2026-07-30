-- Encontre a expectativa de vida média nas oito regiões segundo classificação da Gapminder (campo eight_regions da tabela country) nos anos de 2019 a 2021. Utilize a tabela life_expectancy e ordene por região e ano. Indique se há alguma região em que NÃO houve declínio da expectativa de vida nestes três anos.

SELECT c.eight_regions, 
	   le.ref_year, 
	   ROUND ( AVG(le.tot_years), 2) AS avg_years
FROM life_expectancy le
JOIN country c ON le.country = c.country 
WHERE le.ref_year BETWEEN 2019 AND 2021
GROUP BY c.eight_regions, 
	     le.ref_year
ORDER BY c.eight_regions, 
	     le.ref_year;

