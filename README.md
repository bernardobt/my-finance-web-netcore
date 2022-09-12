# myfinance-web-netcore

### Curso de Pós-Graduação em Engenharia de Software da PUC-MG

### Projeto apresentado à disciplina _Práticas de Implementação e Evolução de Software_

Um sistema para controle de finanças pessoais bem simples, que permite ao usuário registrar planos de contas e transações realizadas para consulta posterior.

# Arquitetura

MVC (Model-View-Controller) é um padrão de arquitetura utilizado para implementar interfaces de usuário, dados e controle de lógica. É um padrão que busca separar a parte lógica de negócio da parte de visualização do software, visando uma melhor divisão do trabalho e melhorando a manutenção do sistema.

O MVC é separado em 3 grandes partes, com as devidas responsabilidades:

- Model: Gerenciamento de dados e logica de negócios.
- View: Responsável pelo layout e exibição.
- Controller: Faz o roteamento de commandos entre as partes de Model e View.

<img src='docs\model-view-controller.png' alt='Diagrama de MVC' style="background-color:white">

# Esquema Banco

Diagrama de Entidades e Relacionamentos que representa o esquema lógico do banco de dados da aplicação.

<img src='docs\DB_DER.png' alt='Diagrama de Entidades e Relacionamentos'>

# Tecnologias Utilizadas

[VS Code](https://code.visualstudio.com/download) + Extensões:

- [C#](https://marketplace.visualstudio.com/items?itemName=ms-dotnettools.csharp)
- [C# Extensions](https://marketplace.visualstudio.com/items?itemName=kreativ-software.csharpextensions)

[ASP.NET CORE MVC na versão .NET 6.0](https://dotnet.microsoft.com/en-us/download)

[SQL-SERVER](https://www.microsoft.com/pt-br/sql-server/sql-server-downloads)

[System.Data.SqlClient](https://www.nuget.org/packages/System.Data.SqlClient)

[ChartJs](https://www.chartjs.org/docs/latest/)

# Exemplos Fictícios

<img src='docs\historico-transacoes.png' alt='Histórico Transações' height="200">
<img src='docs\planos-de-conta.png' alt='Planos de Conta' height="200">

### Pontos para Evolução

- Mostrar uma descrição no lugar do código nas colunas "Plano de Contas" (em transações) e "Tipo" (em plano de contas), através de algumas novas tabelas no Banco de Dados.
- Refatorar algumas partes do código para aproveitar melhor as funcionalidades do Razor.

# Como utilizar

- Clonar o repositório.
- Atualizar o arquivo _appsettings.json_ com a [string de conexão](https://www.connectionstrings.com/sql-server/) mais adequada para conectar ao banco de dados.

<img src='docs\exemplo-string-conexao.png' alt='String Conexão'>

- Navegar para pasta do projeto pelo console

```
cd .\myfinance-web-netcore
```

- Instalar as dependencias necessárias

```
dotnet build
```

- Executar

```
dotnet run
```
