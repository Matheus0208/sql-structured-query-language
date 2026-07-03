-- Utilizando a tabela avg_income, selecione os países com menor renda per capita em 2009.

SELECT * 
FROM avg_income
WHERE ref_year = 2009
ORDER BY mean_usd 
LIMIT 10

