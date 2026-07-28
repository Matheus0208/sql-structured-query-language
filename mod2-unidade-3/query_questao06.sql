-- Indique quais são as linhas comuns entre as tabelas co2_emissions_pc e men_years_at_school.

SELECT cep.country, cep.ref_year  
FROM co2_emissions_pc cep 
WHERE cep.country = 'Brazil'
AND cep.ref_year >= 2000
INTERSECT
SELECT myas.country, myas.ref_year 
FROM men_years_at_school myas 
WHERE myas.country = 'Brazil'
AND myas.ref_year >= 2000