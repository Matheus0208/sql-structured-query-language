-- Após calcular novamente a média da diferença no tempo de escolaridade entre homens e mulheres no ano 2000, segmentando por região do Banco Mundial (wb_regions), execute uma única consulta com subqueries que retorne o nome da região com a maior média de diferença no tempo de escolaridade entre os gêneros.

SELECT tab.wb_regions 
FROM (
	SELECT c.wb_regions,
	AVG(m.mean_years- w.mean_years) AS avg_diff
	FROM men_years_at_school m
	JOIN women_years_at_school w ON m.country = w.country 
		AND m.ref_year = w.ref_year 
	JOIN country c ON m.country = c.country 
	WHERE w.ref_year = 2000
	GROUP BY c.wb_regions
	) tab
	WHERE tab.avg_diff = (
	SELECT MAX(tab.avg_diff1) 
	FROM (
			SELECT AVG (m1.mean_years - w1.mean_years) AS avg_diff1
			FROM men_years_at_school m1
			JOIN women_years_at_school w1 ON m1.co  								
