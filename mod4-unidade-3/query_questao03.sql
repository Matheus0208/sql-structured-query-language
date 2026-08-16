-- Adicione a taxa Selic à tabela. Primeiro, crie a coluna selic como um campo numérico com duas casas decimais e com restrição de não nulo. Se isso não for possível, crie o campo como nulo.

ALTER TABLE relatorio_focus 
ADD COLUMN 'selic' NUMERIC(5,2) NULL
