-- Pesquise novamente a taxa de mortalidade infantil e de natalidade nos seis menores países da Europa, em termos de extensão territorial, no ano 2000, utilizando as tabelas child_mortality e fertility, nesta ordem, e incluindo na consulta os campos tot_deaths e mean_babies. Além disso, inclua a população total dos países. Para isso, execute dois LEFT JOINs.

SELECT cm.country,
	   cm.tot_deaths,
	   f.mean_babies 
FROM child_mortality cm
LEFT JOIN fertility f ON cm.country = f.country 
AND cm.ref_year = f.ref_year 
WHERE cm.ref_year = 2000
AND cm.country IN ('Andorra','Liechtenstein','Malta','Monaco','San Marino','Holy See')