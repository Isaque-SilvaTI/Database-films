# 🎬 Sistema de Avaliação de Filmes

Este é um projeto de banco de dados relacional desenvolvido como um desafio pessoal de aprendizado. A ideia é criar uma versão simplificada de um sistema de avaliações de filmes, inspirado em plataformas como o Metacritic — só que de **baixíssimo orçamento** 😄.

## 🧠 Autor
**Isaque Silva de Jesus**

## 📌 Objetivo
Permitir o cadastro de usuários, inserção de filmes e registro de avaliações com notas e comentários. A estrutura do banco foi construída usando MySQL e serve como base para um futuro sistema completo de reviews.

## 🧱 Estrutura do Banco

O banco é composto por três tabelas principais:

### 🔐 `usuario`
Armazena os dados dos usuários do sistema.
- `idUsuario` (PK)
- `nome`
- `email` (único)
- `senha`

### 🎞️ `filmes`
Armazena os dados dos filmes inseridos pelos usuários.
- `idFilme` (PK)
- `titulo`
- `ano`
- `genero`
- `sinopse`
- `idUsuario` (FK → usuario)

### ⭐ `avaliacoes`
Armazena as avaliações feitas pelos usuários sobre os filmes.
- `idAvaliacao` (PK)
- `idUsuario` (FK)
- `idFilme` (FK)
- `nota` (decimal de 0.0 a 10.0)
- `comentario`
- `data`

## 🔄 Futuras Implementações

À medida que meus estudos em SQL avançarem, pretendo adicionar:

- ✅ Triggers para validações e automações (ex: impedir múltiplas avaliações do mesmo usuário para o mesmo filme).
- ✅ Stored Procedures para encapsular lógica de negócios.
- ✅ Views para facilitar consultas complexas.
- ✅ Inserts de exemplo para facilitar testes.

## 🧪 Como usar

1. Clone o repositório ou baixe o arquivo `.sql` disponível.
2. Importe o script no seu gerenciador MySQL:
   ```bash
   mysql -u root -p < projeto_avaliacao_filmes.sql
   ```
3. Pronto! O banco estará criado com a estrutura inicial.

## 📚 Tecnologias
- MySQL
- SQL Puro (DDL)
- Foco em modelagem relacional e boas práticas iniciais

---

Sinta-se à vontade para dar sugestões, apontar melhorias ou apenas acompanhar a evolução!
