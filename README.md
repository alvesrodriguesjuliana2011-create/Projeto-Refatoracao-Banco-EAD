# Projeto de Refatoração de Banco de Dados — Plataforma EAD

Projeto acadêmico de demonstração de normalização de dados para uma plataforma de cursos online.

## Arquivos
1. `01_estrutura_banco.sql` — criação das tabelas e relacionamentos.
2. `02_dados.sql` — inserção de dados fictícios para teste.
3. `03_indices.sql` — criação de índices auxiliares.
4. `04_testes.sql` — consultas de validação e consulta consolidada.
5. `05_atualizacao.sql` — exemplos de atualização de registros.

## Como executar
Utilize um programa compatível com SQLite (por exemplo, DB Browser for SQLite) e execute os arquivos nesta ordem: 01, 02, 03, 04 e 05.

Ative `PRAGMA foreign_keys = ON` em cada conexão utilizada. O arquivo de dados de exemplo deve ser executado apenas uma vez em um banco recém-criado, para evitar duplicação.

## Observação
Os dados são fictícios e o modelo é uma proposta ilustrativa baseada no cenário do trabalho. Ajuste nomes, regras e estrutura se o enunciado ou o professor exigir outros campos ou relacionamentos. Os índices são sugestões; para afirmar ganho de desempenho, compare os planos/tempos de consulta antes e depois.
