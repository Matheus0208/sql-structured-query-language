-- Crie uma tabela chamada relatorio_focus para registrar as previsões de mercado do IPCA (ipca), o PIB (pib) e o Dólar (dolar), todos com valores numéricos de duas casas decimais. Além disso, adicione um campo ref_date do tipo data. O campo ref_date será a chave primária, e todos os campos devem ser definidos como não nulos.

CREATE TABLE 'relatorio_focus' (
			'ipca' NUMERIC(5,2) NOT NULL,
			'pib' NUMERIC(5,2) NOT NULL,
			'dolar' NUMERIC(5,2) NOT NULL,
			'ref_date' DATE NOT NULL PRIMARY KEY
)



