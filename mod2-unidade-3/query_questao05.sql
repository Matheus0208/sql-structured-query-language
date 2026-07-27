-- Utilizando as tabelas co2_emissions_pc e men_years_at_school, verifique se há diferenças na combinação de país e ano para o Brasil a partir de 2000 (inclusive).

SELECT cep.country, cep.ref_year  
FROM co2_emissions_pc cep 
WHERE cep.country = 'Brazil'
AND cep.ref_year > 2000
EXCEPT
SELECT myas.country, myas.ref_year 
FROM men_years_at_school myas 
WHERE myas.country = 'Brazil'
AND myas.ref_year > 2000