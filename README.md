# 📊 Análise de Vendas – E-commerce

## 📌 Objetivo
Este projeto tem como objetivo realizar uma análise exploratória de dados de vendas
de um e-commerce fictício, utilizando SQL para extrair métricas importantes e gerar
insights que auxiliem na tomada de decisão do negócio.

O foco do projeto é demonstrar habilidades essenciais para uma vaga de Analista de Dados Júnior.

---

## 🛠️ Ferramentas Utilizadas
- MySQL
- MySQL Workbench
- SQL
- GitHub

---

## 🗂️ Estrutura do Banco de Dados
O banco de dados foi modelado com quatro tabelas principais:

- **clientes**: informações dos clientes
- **produtos**: catálogo de produtos e preços
- **pedidos**: registros de compras realizadas
- **itens_pedido**: detalhamento dos produtos vendidos em cada pedido

Os relacionamentos seguem o padrão:
- clientes → pedidos (1:N)
- pedidos → itens_pedido (1:N)
- produtos → itens_pedido (1:N)

---

## ❓ Perguntas de Negócio
As análises foram guiadas pelas seguintes perguntas:

- Qual é o faturamento total da loja?
- Qual é o ticket médio por pedido?
- Quais produtos vendem mais em quantidade?
- Quais produtos geram mais receita?
- Quais clientes geram maior faturamento?

---

## 📈 Análises Realizadas
As análises foram feitas utilizando consultas SQL com:
- JOINs entre múltiplas tabelas
- Funções de agregação (SUM, COUNT, AVG)
- Agrupamentos (GROUP BY)
- Subqueries

Os scripts SQL utilizados estão disponíveis no arquivo `consultas.sql`.

---

## ▶️ Como Executar o Projeto
1. Executar o script `criar_tabelas.sql` para criar o banco e as tabelas.
2. Executar o script `inserir_dados.sql` para inserir os dados.
3. Executar as consultas disponíveis em `consultas.sql`.

---

## 👤 Autor
Emerson Santos  
Estudante de Análise e Desenvolvimento de Sistemas  
Foco em Análise de Dados
