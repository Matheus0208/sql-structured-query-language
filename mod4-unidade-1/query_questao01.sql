-- A tabela men_years_at_school do nosso banco possui dados apenas até 2009. No entanto, ao pesquisar na base Our World in Data, você encontrou informações mais recentes. Assim, decidiu completar os dados, pelo menos para o Brasil e a Argentina, inserindo as informações da tabela a seguir, incluindo as colunas que não possuem valores. Faça a inserção utilizando apenas um comando INSERT.

INSERT INTO men_years_at_school (country, ref_year, mean_years)

VALUES ('Brazil', '2010', '6,7'),
	   ('Brazil', '2011', '6,8'),
	   ('Brazil', '2012', '7,0'),
	   ('Brazil', '2013', '7,1'),
	   ('Brazil', '2014', '7,2'),
	   ('Brazil', '2015', '7,3'),
	   ('Brazil', '2016', '7,5'),
	   ('Brazil', '2017', '7,6'),
	   ('Brazil', '2018', '7,8'),
	   ('Brazil', '2019', NULL),
	   ('Brazil', '2020', NULL),
	   ('Argentina', '2010', '10,5'),
	   ('Argentina', '2011', '10,6'),
	   ('Argentina', '2012', '10,6'),
	   ('Argentina', '2013', '10,8'),
	   ('Argentina', '2014', '10,7'),
	   ('Argentina', '2015', '10,7'),
	   ('Argentina', '2016', '10,8'),
	   ('Argentina', '2017', NULL),
	   ('Argentina', '2018', '10,9'),
	   ('Argentina', '2019', NULL),
	   ('Argentina', '2020', '10,9');

