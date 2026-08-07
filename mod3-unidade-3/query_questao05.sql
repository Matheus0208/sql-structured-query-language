-- Indique quais países da região da América Latina e do Caribe, de acordo com a classificação do Banco Mundial (campo wb_regions da tabela country), apresentaram, em 2000, uma diferença de tempo na escola entre homens e mulheres menor do que a do Brasil no mesmo ano, significando que, nesses países, as mulheres passaram mais tempo na escola do que os homens. Utilize EXISTS para realizar a consulta.

SELECT *
FROM (SELECT m.country, m.mean_years - w.mean_years AS 'diferenca'
	  FROM men_years_at_school m
	  JOIN women_years_at_school w ON m.country = w.country 
	  AND m.ref_year = w.ref_year
	  JOIN country c ON m.country = c.country 
	  WHERE w.ref_year = 2000
	  AND c.wb_regions = 'Latin America & Caribbean')t1
WHERE EXISTS
	  (SELECT *
	  FROM(SELECT m2.country, m2.mean_years - w2.mean_years AS 'diferenca'
	  	   FROM men_years_at_school m2
	  	   JOIN women_years_at_school w2 ON m2.country = w2.country 
	  	   AND m2.ref_year = w2.ref_year
	  	   JOIN country c2 ON m2.country = c2.country 
	  	   WHERE w2.ref_year = 2000
	  	   AND c2.wb_regions = 'Latin America & Caribbean'
	  	   GROUP BY m2.country)t2
	  	   WHERE t1.diferenca < t2.diferenca AND t2.country  = 'Brazil')