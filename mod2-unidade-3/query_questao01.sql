-- Em uma única consulta, traga os dados de tempo na escola de homens e mulheres nos BRICS (Brazil, Russia, India, China e South Africa) no ano de 2000. Use as tabelas men_years_at_school e woman_years_at_school. Lembre-se de criar uma coluna para distinguir cada um dos gêneros e utilize a cláusula UNION. Indique quem passa mais e menos tempo na escola.

SELECT m.country, m.mean_years, 'male' as gender 
FROM men_years_at_school m
WHERE m.country IN ('Brazil', 'Russia', 'India', 'South Africa')
AND m.ref_year = 2009
UNION 
SELECT w.country, w.mean_years, 'female' as gender
FROM women_years_at_school w
WHERE w.country IN ('Brazil', 'Russia', 'India', 'South Africa')
AND w.ref_year = 2009