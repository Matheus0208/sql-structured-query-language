-- Calcule a média de diferença de tempo na escola entre homens e mulheres no ano 2000. Utilize as tabelas men_years_at_school e women_years_at_school.

SELECT AVG(myas.mean_years - wyas.mean_years) AS 'Diferença'
FROM men_years_at_school myas 
JOIN women_years_at_school wyas ON myas.country = wyas.country
AND myas.ref_year = wyas.ref_year 
WHERE myas.ref_year = 2000
