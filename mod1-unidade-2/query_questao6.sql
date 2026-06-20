-- Utilizando a tabela co2_emissions_pc, indique as emissões de CO2 no Brasil, na China e nos Estados Unidos, de 2019 a 2021. Compartilhe as suas observações sobre a pesquisa.

SELECT *
FROM co2_emissions_pc
WHERE ref_year BETWEEN 2019 AND 2021
AND country IN ('Brazil', 'China', 'EUA')

