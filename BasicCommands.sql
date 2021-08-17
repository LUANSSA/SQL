CREATE DATABASE IF NOT EXISTS SDBA_club;
USE SDBA_club;

CREATE TABLE IF NOT EXISTS user
(
	id_usuario int AUTO_INCREMENT,
	name VARCHAR(64),
	password VARCHAR(64),
	PRIMARY KEY (id_user)
);

INSERT INTO user
(name,password)
VALUES
("Luan","123456");

SELECT * FROM usuario;

INSERT INTO user
(name,password)
VALUES
("Gili","123");


DROP DATABASE SDBA_club;


