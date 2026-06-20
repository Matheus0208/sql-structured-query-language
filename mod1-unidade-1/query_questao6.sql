--Utilizando a tabela petrobras e o campo Close para fazer a sua pesquisa, indique qual o preço de fechamento das ações da Petrobras no dia 8 de dezembro de 2022

SELECT Date, close
FROM petrobras
WHERE Date = '2022-12-08';