-- Consulte a tabela co2_emissions_pc e calcule a soma das emissões de CO2 pelas regiões da classificação do Banco Mundial (campo wb_regions da tabela country) em 2022. Como a tabela co2_emissions_pc traz as emissões per capita, não se esqueça de multiplicar a emissão pela população (tabela population) antes de somar. Divida o resultado por 109 para convertê-lo em gigatoneladas e arredonde para duas casas decimais. Ordene pelo total de emissões calculado, do maior para o menor.

SELECT c.wb_regions, 
	   ROUND(SUM (p.tot_pop * cep.co2_pc) / 1E9, 2) AS tot_giga_co2
FROM co2_emissions_pc cep
JOIN country c ON cep.country = c.country 
JOIN population p ON cep.country = p.country 
AND cep.ref_year = p.ref_year
WHERE cep.ref_year = 2022 
GROUP BY c.wb_regions
ORDER BY tot_giga_co2 DESC;


