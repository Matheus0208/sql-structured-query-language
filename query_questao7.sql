--Utilizando a tabela gdp_pc, indique qual país tem PIB per capita menor do que 400 dólares.

SELECT country, ref_year, gdp_pc
FROM gdp_pc
WHERE gdp_pc < '400';