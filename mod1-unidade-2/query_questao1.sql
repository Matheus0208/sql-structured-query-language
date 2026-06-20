-- Indique se há linhas com valores nulos no campo gdp_pc na tabela gdp_pc.

SELECT country, ref_year, gdp_pc
FROM gdp_pc
WHERE gdp_pc = NULL