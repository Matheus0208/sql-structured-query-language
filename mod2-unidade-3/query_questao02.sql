-- Indique quais são os países presentes na tabela child_mortality que NÃO estão na tabela fertility.

SELECT cm.country 
FROM child_mortality cm 
EXCEPT
SELECT f.country
FROM fertility f 