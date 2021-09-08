CREATE DATABASE escola;
USE escola;

-- CRIANDO TABLE aluno
CREATE TABLE aluno
(
cpf BIGINT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
data_nasc DATE NOT NULL,
nome_pai VARCHAR(100),
nome_mae VARCHAR(100)
);
-- CRIANDO TABLE matricula
CREATE TABLE matricula
(
id_matricula BIGINT AUTO_INCREMENT PRIMARY KEY,
nome_escola VARCHAR(100) NOT NULL,
ano_letivo DATE NOT NULL,
cpf BIGINT,
FOREIGN KEY (cpf) REFERENCES aluno(cpf)
);
-- EXCLUINDO TABELA aluno e EXCLUINDO TABELA matricula
-- DROP TABLE aluno;
-- DROP TABLE matricula;

-- INSERINDO aluno
INSERT INTO aluno
(cpf, nome, data_nasc, nome_pai, nome_mae)
VALUES
(11122233344,"Lucas","2000-12-11","Geremias Uris","Elisbelta de Jesus");
-- INSERINDO aluno
INSERT INTO aluno
(cpf, nome, data_nasc, nome_pai, nome_mae)
VALUES
(11122233311, "Josue", "2000-12-01","Cassion Eremitas","Girulita Hotuli");

-- INSERINDO matricula E ASSOCIANDO A fk DE matricula
-- COM A pk DE aluno
INSERT INTO matricula
(nome_escola, ano_letivo, cpf)
VALUES
("Medalha", "2000-01-01", 11122233344);
-- INSERINDO matricula E ASSOCIANDO A fk DE matricula
-- COM A pk DE ALUNO
INSERT INTO matricula
(nome_escola, ano_letivo, cpf)
VALUES
("Medalha", "2000-01-01", 11122233311);


-- SELECIONANDO UM aluno
SELECT * FROM aluno WHERE cpf = 11122233344;
-- SELECIONANDO UMA matricula
SELECT * FROM matricula WHERE cpf = 11122233344;


-- SELECIONANDO alunos
SELECT * FROM aluno;
-- SELECIONANDO matriculas
SELECT * FROM matricula;


-- SELECIONANDO matricula E aluno
SELECT * FROM matricula
INNER JOIN aluno USING(cpf)
WHERE matricula.cpf = 11122233344;

-- SELECIONANDO matricula E aluno E JUNTANDO AS DUAS TABELAS
-- NESTE CASO A COLUNA cpf APARECERÁ DUAS VEZES
SELECT * FROM matricula
INNER JOIN aluno ON matricula.cpf = aluno.cpf
WHERE aluno.cpf = 11122233344;
