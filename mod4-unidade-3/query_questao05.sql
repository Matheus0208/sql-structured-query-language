-- Atualize o campo selic com os valores da tabela a seguir:

ALTER TABLE relatorio_focus (
MODIFY COLUMN 'selic' NOT NULL);

CREATE TABLE relatorio_focus_temp (
	ipca NUMERIC(5,2) NOT NULL,
	pib NUMERIC(5,2) NOT NULL,
	dolar NUMERIC(5,2) NOT NULL,
	ref_date DATE NOT NULL PRIMARY KEY,
	selic NUMERIC(5,2) NOT NULL);

INSERT INTO relatorio_focus_temp 
SELECT * FROM relatorio_focus;

SELECT * 
FROM relatorio_focus_temp;

DROP TABLE relatorio_focus;

ALTER TABLE relatorio_focus_temp 
RENAME TO relatorio_focus;

SELECT * 
FROM relatorio_focus;
