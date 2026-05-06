# Fornecedores API

API REST para cadastro e gerenciamento de fornecedores, desenvolvida com Ruby on Rails e PostgreSQL.

## Tecnologias

- Ruby on Rails 8 (API mode)
- PostgreSQL
- Ruby 3.x

## Como rodar localmente

```bash
# Instalar dependências
bundle install

# Criar e migrar o banco
rails db:create db:migrate

# Iniciar o servidor
rails server
```

## Endpoints

| Método | Rota              | Descrição                 |
| ------- | ----------------- | --------------------------- |
| GET     | /fornecedores     | Lista todos os fornecedores |
| GET     | /fornecedores/:id | Busca um fornecedor         |
| POST    | /fornecedores     | Cria um fornecedor          |
| PUT     | /fornecedores/:id | Atualiza um fornecedor      |
| DELETE  | /fornecedores/:id | Remove um fornecedor        |

## Modelo de dados

| Campo     | Tipo   | Descrição                |
| --------- | ------ | -------------------------- |
| nome      | string | Nome do fornecedor         |
| cnpj      | string | CNPJ do fornecedor         |
| categoria | string | Categoria (ex: Tecnologia) |
| status    | string | Status (ativo, inativo)    |
