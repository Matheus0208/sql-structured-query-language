-- Segundo o Ministério da Saúde, as taxas de mortalidade infantil (TMI) são classificadas em altas (50 ou mais), médias (20-49) e baixas (menos de 20). Utilizando a tabela child_mortality e o campo tot_deaths, encontre todos os países que alcançaram taxas de mortalidade baixas com uma variação de 5%, ou seja, com valor de 20±5%. Indique em que ano o Brasil atingiu essa TMI.

SELECT *
FROM child_mortality
WHERE tot_deaths BETWEEN 19 AND 21
AND country = 'Brazil'