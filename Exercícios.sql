--Questão 1 
/* Você é responsável por controlar os dados de clientes e de produtos da sua empresa.
O que você precisará fazer é confirmar se:*/
/* A) Existem 2.517 produtos cadastrados na base e, se não tiver, 
você deverá reportar ao seu gestor para saber se existe alguma defasagem no controle dos produtos.*/
SELECT *
FROM DimProduct;

/*B) Até o mês passado, a empresa tinha um total de 19.500 clientes na base de controle.
Verifique se esse número aumentou ou reduziu.*/
SELECT *
FROM DimCustomer; -- A quantidade de clientes diminuiu.


-- Questão 2
/* Você trabalha no setor de marketing da empresa Contoso e acaba de ter uma ideia de oferecer descontos especiais para os clientes no dia de seus aniversários. 
Para isso, você vai precisar listar todos os clientes e as suas respectivas datas de nascimento, além de um contato.*/
-- A) Selecione as colunas: CustomerKey, FirstName, EmailAddress, BirthDate da tabela dimCustomer.
SELECT 
	CustomerKey,
	FirstName, 
	EmailAddress, 
	BirthDate
FROM 
	DimCustomer;
--B) Renomeie as colunas dessa tabela usando o alias (comando AS).
SELECT 
	CustomerKey AS 'ID',
	FirstName AS 'PRIMEIRO NOME',
	EmailAddress AS 'EMAIL', 
	BirthDate AS 'DATA DE NASCIMENTO'
FROM 
	DimCustomer;


-- Questão 3: 
/* A Contoso está comemorando aniversário de inauguração de 10 anos e pretende fazer uma ação de premiação para os clientes. 
A empresa quer presentear os primeiros clientes desde a inauguração.
Você foi alocado para levar adiante essa ação. Para isso, você terá que fazer o seguinte:*/

/*A) A Contoso decidiu presentear os primeiros 100 clientes da história com um vale compras de R$ 10.000. 
Utilize um comando em SQL para retornar uma tabela com os primeiros 100 primeiros clientes da tabela dimCustomer (selecione todas as colunas).*/
SELECT 
	TOP(100) *
FROM DimCustomer;

/*B) A Contoso decidiu presentear os primeiros 20% de clientes da história com um vale compras de R$ 2.000. 
Utilize um comando em SQL para retornar 20% das linhas da sua
tabela dimCustomer (selecione todas as colunas).*/
SELECT 
	TOP(20) PERCENT *
FROM DimCustomer;

/* C) Adapte o código do item a) para retornar apenas as 100 primeiras linhas, mas apenas as colunas FirstName, EmailAddress, BirthDate.*/
SELECT 
	TOP(100) 
		FirstName,
		EmailAddress, 
		BirthDate
FROM DimCustomer;

-- D) Renomeie as colunas anteriores para nomes em português.
SELECT 
	TOP(100) 
		FirstName AS 'PRIMEIRO NOME',
		EmailAddress AS 'EMAIL', 
		BirthDate AS 'DATA DE NASCIMENTO'
FROM DimCustomer;



-- Questão 4
/* A empresa Contoso precisa fazer contato com os fornecedores de produtos para repor o estoque. 
Você é da área de compras e precisa descobrir quem são esses fornecedores.
Utilize um comando em SQL para retornar apenas os nomes dos fornecedores na tabela dimProduct e renomeie essa nova coluna da tabela.*/
SELECT 
	DISTINCT Manufacturer 
	AS 'Fornecedor'
FROM DimProduct;