Ótima adição! Incluir o link para o download do banco de dados é uma excelente prática, pois permite que outras pessoas recriem seu ambiente e testem os scripts.

Ajustei a seção "Como Utilizar" para incluir essa informação. Aqui está a versão atualizada e completa do seu README.md:

📊 Exercícios de SQL com a Base de Dados Contoso
Este repositório contém um script SQL com uma série de exercícios resolvidos, focados em análise e consulta de dados da empresa fictícia Contoso. As questões abordam cenários práticos de verificação de dados, marketing, ações de premiação e gestão de fornecedores.

🎯 Objetivo
O objetivo deste script é demonstrar a aplicação de comandos SQL para resolver problemas de negócio comuns, como:

Validação da integridade e quantidade de registros em tabelas.

Seleção e renomeação de colunas para relatórios específicos.

Filtragem de dados para campanhas de marketing e premiação de clientes.

Identificação de informações distintas para gestão de fornecedores.

📂 Estrutura do Script
O arquivo SQL é dividido em quatro questões principais, cada uma com seus próprios sub-itens.

Questão 1: Controle de Dados (Clientes e Produtos)
Esta seção foca na validação dos dados da empresa, comparando os números atuais com os registros anteriores.

1.A) Verifica o número total de produtos cadastrados na tabela DimProduct para garantir que a base de dados está atualizada (valor esperado: 2.517 produtos).

1.B) Realiza uma contagem na tabela DimCustomer para analisar se o número de clientes aumentou ou diminuiu em relação ao mês anterior (valor de referência: 19.500 clientes).

Questão 2: Ação de Marketing de Aniversário
Aqui, o objetivo é extrair uma lista de clientes para uma campanha de marketing que oferecerá descontos de aniversário.

2.A) Seleciona as colunas essenciais (CustomerKey, FirstName, EmailAddress, BirthDate) da tabela DimCustomer.

2.B) Renomeia as colunas selecionadas para o português utilizando o comando AS, facilitando a leitura e interpretação do relatório (ID, PRIMEIRO NOME, EMAIL, DATA DE NASCIMENTO).

Questão 3: Premiação de Aniversário da Empresa
Para comemorar seus 10 anos, a Contoso decidiu premiar seus clientes mais antigos. As consultas abaixo ajudam a identificar esses clientes.

3.A) Utiliza o comando TOP(100) para listar os 100 primeiros clientes da história da empresa, selecionando todas as colunas.

3.B) Utiliza TOP(20) PERCENT para selecionar os 20% clientes mais antigos da base.

3.C) Adapta a consulta do item A para retornar apenas as colunas de nome, e-mail e data de nascimento dos 100 primeiros clientes.

3.D) Renomeia as colunas do item C para o português.

Questão 4: Gestão de Fornecedores
O setor de compras precisa de uma lista com todos os fornecedores para planejar a reposição de estoque.

A consulta utiliza SELECT DISTINCT para retornar uma lista com os nomes únicos dos fornecedores (Manufacturer) da tabela DimProduct, renomeando a coluna para 'Fornecedor'.

#🛠️ Como Utilizar
Para executar este script, você precisará de um ambiente SQL, como o SQL Server Management Studio ou Azure Data Studio. As consultas foram desenvolvidas utilizando a base de dados de exemplo Contoso BI Demo Dataset for Retail Industry.

Baixe o banco de dados: Faça o download do arquivo de backup (.bak) no site oficial da Microsoft:

Download Contoso BI Demo Dataset for Retail Industry

Restaure o banco de dados: Após o download, restaure o arquivo ContosoRetailDW.bak em sua instância do SQL Server.

Execute as consultas: Com a base de dados restaurada e pronta para uso, copie o código deste repositório e execute-o em seu ambiente para ver os resultados.
