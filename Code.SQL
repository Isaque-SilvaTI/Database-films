-- Projeto de Banco de Dados: Sistema de Avaliação de Filmes
-- Autor: isaque Silva de Jesus
-- Descrição: Estrutura de tabelas para gerenciamento de usuários, filmes e avaliações, quase um metacritic de baixissimo orçamento haha! 
-- Versão: 1.0

-- Criação da tabela de usuários
CREATE TABLE usuario (
    idUsuario INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(100) NOT NULL,
    PRIMARY KEY (idUsuario)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Criação da tabela de filmes
CREATE TABLE filmes (
    idFilme INT NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    ano INT DEFAULT NULL,
    genero VARCHAR(50) DEFAULT NULL,
    sinopse TEXT DEFAULT NULL,
    idUsuario INT,
    PRIMARY KEY (idFilme),
    FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Criação da tabela de avaliações
CREATE TABLE avaliacoes (
    idAvaliacao INT NOT NULL AUTO_INCREMENT,
    idUsuario INT,
    idFilme INT,
    nota DECIMAL(3,1) DEFAULT NULL,
    comentario TEXT DEFAULT NULL,
    data DATE DEFAULT NULL,
    PRIMARY KEY (idAvaliacao),
    FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario),
    FOREIGN KEY (idFilme) REFERENCES filmes(idFilme)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
