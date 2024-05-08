CREATE DATABASE jogadores;

\c jogadores;

CREATE TABLE jogador (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INTEGER NOT NULL,
    habilidade INTEGER NOT NULL,
    posicao VARCHAR(50) NOT NULL,
    numero_camisa INTEGER NOT NULL,
    equipe VARCHAR(50) NOT NULL
);

INSERT INTO (nome, idade, habilidade, posicao, numero_camisa, equipe) 
VALUES ('Jonathan Calleri', 29, 10, 'atacante', 9, 'sao paulo');

INSERT  INTO jogador  (nome, idade, habilidade, posicao, numero_camisa, equipe)
VALUES ('Luciano Neves', 30, 9, 'atacante', 10, 'sao paulo');

INSERT  INTO jogador (nome, idade, habilidade, posicao, numero_camisa, equipe)
VALUES ('Lucas Moura', 31, 10, 'atacante', 7, 'sao paulo');

INSERT INTO jogador (nome, idade, habilidade, posicao, numero_camisa, equipe)
VALUES ('Aldemir Ferreira', 26, 9, 'atacante', 47, 'sao paulo');

INSERT INTO jogador (nome, idade, habilidade, posicao, numero_camisa, equipe)
VALUES ('Giuliano Galoppo' 24, 9, 'meia', 8, 'sao paulo');

INSERT INTO jogador (nome, idade, habilidade, posicao, numero_camisa, equipe)
VALUES ('Wellington Rato', 31, 8, 'meia', 27, 'sao paulo');

INSERT INTO jogador (nome, idade, habilidade, posicao, numero_camisa, equipe)
VALUES ('James Rodriguez', 32, 8, 'meia', 55, 'sao paulo');

INSERT INTO jogador (nome, idade, habilidade, posicao, numero_camisa, equipe)
VALUES ('Rodrigo Nestor', 23, 8, 'volante', 11, 'sao paulo');

INSERT INTO jogador (nome, idade, habilidade, posicao, numero_camisa, equipe)
VALUES ('Pablo Maia', 22, 8, 'volante', 29, 'sao paulo');

INSERT INTO jogador (nome, idade, habilidade, posicao, numero_camisa, equipe)
VALUES ('Diego Costa', 24, 9, 'zagueiro', 4, 'sao paulo');

INSERT INTO jogador (nome, idade, habilidade, posicao, numero_camisa, equipe)
VALUES ('Robert Arboleda', 32, 9, 'zagueiro', 5, 'sao paulo');

INSERT INTO jogador (nome, idade, habilidade, posicao, numero_camisa, equipe)
VALUES ('Nahuel Ferraresi', 25, 9, 'zagueiro', 32, 'sao paulo');

INSERT INTO jogador (nome, idade, habilidade, posicao, numero_camisa, equipe)
VALUES ('Igor Vinicius', 27, 8, 'lateral direito', 2, 'sao paulo');

INSERT INTO jogador (nome, idade, habilidade, posicao, numero_camisa, equipe)
VALUES ('Marcio Rafael', 38, 10, 'lateral direito', 13, 'sao paulo');

INSERT INTO jogador (nome, idade, habilidade, posicao, numero_camisa, equipe)
VALUES ('Joao Moreira', 19, 9, 'lateral direito', 30, 'sao paulo');

INSERT INTO jogador (nome, idade, habilidade, posicao, numero_camisa, equipe)
VALUES ('Welington', 23, 7, 'lateral esquerdo', 6, 'sao paulo');

INSERT INTO jogador (nome, idade, habilidade, posicao, numero_camisa, equipe)
VALUES ('Rafael Pires', 34, 10, 'goleiro', 23, 'sao paulo');