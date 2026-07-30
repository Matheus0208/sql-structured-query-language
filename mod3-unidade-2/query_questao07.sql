-- Calcule novamente a média de diferença de tempo na escola entre homens e mulheres no ano 2000. Agora, você deve segmentar pela renda utilizando o campo wb4income. Ordene pela média e verifique se há correlação entre renda e diferença de tempo na escola entre homens e mulheres.

SELECT c.wb4income,
       AVG(m.mean_years - w.mean_years ) AS 'Subtração'
FROM men_years_at_school m 
JOIN women_years_at_school w ON m.country = w.country 
AND m.ref_year = w.ref_year 
JOIN country c ON m.country = c.country 
WHERE m.ref_year = 2000
GROUP BY c.wb4income 