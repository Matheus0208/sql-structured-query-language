-- Pesquise novamente a taxa de mortalidade infantil e de natalidade nos seis menores países da Europa, em termos de extensão territorial, no ano 2000. Agora, você deve executar INNER JOIN entre child_mortality e population e LEFT JOIN entre child_mortality e fertility. Explique se esta operação muda o resultado.

SELECT cm.country,
	   cm.tot_deaths,
	   f.mean_babies,
	   p.tot_pop 
FROM child_mortality cm
INNER JOIN population p ON cm.country = p.country
AND cm.ref_year = p.ref_year 
LEFT JOIN fertility f ON cm.country = f.country 
AND cm.ref_year = f.ref_year  
WHERE cm.ref_year = 2000
AND cm.country IN ('Andorra','Liechtenstein','Malta','Monaco','San Marino','Holy See')