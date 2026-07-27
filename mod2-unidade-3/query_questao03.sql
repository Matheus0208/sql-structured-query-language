-- Compare as tabelas population e child_mortality e indique se há alguma diferença nos países presentes em cada uma delas.

SELECT P.country 
FROM population p 
EXCEPT
SELECT cm.country 
FROM child_mortality cm 