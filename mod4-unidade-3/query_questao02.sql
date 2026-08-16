-- Insira na tabela relatorio_focus os dados apresentados a seguir, extraídos dos relatórios Focus do Banco Central, que são publicados semanalmente:

INSERT INTO relatorio_focus (ipca, pib, dolar, ref_date)
VALUES (3.98, 2.09, 5.15, '2024-06-21'),
	   (4.00, 2.09, 5.20, '2024-06-28'),
	   (4.00, 2.11, 5.22, '2024-07-12'),
	   (4.05, 2.15, 5.30, '2024-07-19');

SELECT *
FROM relatorio_focus 