-- Consulte novamente a taxa de mortalidade infantil do Brasil em porcentagem, sem utilizar o operador IN para listar os anos, mas realizando um cálculo que inclua o período de 1910 a 2020 em intervalos de 10 anos.

SELECT cm.ref_year,
	   cm.tot_deaths,
	   100 * cm.tot_deaths / 1000 AS percent_deaths
FROM child_mortality cm
WHERE cm.ref_year BETWEEN 1910 AND 2020
AND cm.ref_year %10 = 0
AND cm.country = 'Brazil'
ORDER BY cm.ref_year;
