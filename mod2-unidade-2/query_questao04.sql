-- Pesquise novamente a taxa de mortalidade infantil e de natalidade nos seis menores países da Europa, em termos de extensão territorial, no ano 2000. Agora, você deve inverter a ordem das tabelas: utilize primeiro a tabela fertility e, em seguida, child_mortality. Na sequência, utilize a cláusula RIGHT JOIN.

SELECT cm.country,
	   cm.tot_deaths,
	   f.mean_babies
FROM fertility f
RIGHT JOIN child_mortality cm ON cm.country = f.country 
AND cm.ref_year = f.ref_year 
WHERE cm.ref_year = 2000
AND cm.country IN ('Andorra','Liechtenstein','Malta','Monaco','San Marino','Holy See');