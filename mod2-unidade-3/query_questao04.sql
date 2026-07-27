-- Indique se há algum país na tabela population que NÃO existe na tabela country.

SELECT P.country 
FROM population p 
EXCEPT
SELECT c.country 
FROM country c  