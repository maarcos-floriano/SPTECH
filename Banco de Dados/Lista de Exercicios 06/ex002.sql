create database Campanha;

use campanha;

CREATE TABLE Endereco (
idEndereco INT PRIMARY KEY AUTO_INCREMENT,
rua VARCHAR(45),
bairro VARCHAR(45)
);

CREATE TABLE Organizadores(
idOrga INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(30),
email VARCHAR(45),
endereco INT,
FOREIGN KEY (endereco) REFERENCES Endereco(idEndereco),
orgaExperiente INT
);

CREATE TABLE Campanhas (
idCampanhas INT PRIMARY KEY AUTO_INCREMENT,
categoria VARCHAR(45),
instituicao1 VARCHAR(30),
instituicao2 VARCHAR(30),
dtFinal DATE,
fkOrganizador INT,
FOREIGN KEY (fkOrganizador) REFERENCES Organizadores(idOrga)
);

INSERT INTO Endereco(rua, bairro) VALUES
	('Rua A', 'Bairro X'),
    ('Rua B', 'Bairro Y'),
    ('Rua C', 'Bairro Z');

INSERT INTO Organizadores (nome, email, endereco, orgaExperiente) VALUES
    ('Organizador 1', 'org1@email.com', 1, 3),
    ('Organizador 2', 'org2@email.com', 2, 4),
    ('Organizador 3', 'org3@email.com', 3, 5),
    ('Organizador 51', 'org51@email.com', 1, null),
    ('Organizador 52', 'org52@email.com', 2, null),
    ('Organizador 53', 'org53@email.com', 3, null);

INSERT INTO Campanhas (categoria, instituicao1, instituicao2, dtFinal, fkOrganizador) VALUES
    ('Alimento', 'Instituição A', 'Instituição B', '2023-12-31', 1),
    ('Produtos de Higiene', 'Instituição C', NULL, '2023-11-30', 2),
    ('Máscaras de Proteção', 'Instituição D', 'Instituição E', '2023-10-15', 3);
    
SELECT * FROM Endereco;
SELECT * FROM Organizadores;
SELECT * FROM Campanhas;

UPDATE `campanha`.`Organizadores` SET `orgaExperiente` = '4' WHERE (`idOrga` = '1');
UPDATE `campanha`.`Organizadores` SET `orgaExperiente` = '5' WHERE (`idOrga` = '2');
UPDATE `campanha`.`Organizadores` SET `orgaExperiente` = '6' WHERE (`idOrga` = '3');

SELECT Organizadores.*, Campanhas.* FROM Organizadores 
	JOIN Campanhas ON fkOrganizador = idOrga;
    
SELECT Organizadores.*, Campanhas.* FROM Organizadores 
	JOIN Campanhas ON fkOrganizador = idOrga
		WHERE nome='Organizador 3';

SELECT Novatos.*, Experiente.* FROM Organizadores as Novatos
	LEFT JOIN Organizadores as Experiente ON Novatos.idOrga = Experiente.orgaExperiente;
    
SELECT Bebe.nome as Novato, Velho.nome as Experiente FROM Organizadores as Bebe
	JOIN Organizadores as Velho ON Bebe.orgaExperiente = Velho.idOrga
		WHERE Velho.nome='Organizador 51';
        
SELECT novos.nome AS organizador_novato, C.*, antigos.nome AS organizador_orientador FROM Organizadores as novos
	JOIN Campanhas as C ON novos.idOrga = C.fkOrganizador
	JOIN Organizadores as antigos ON novos.orgaExperiente = antigos.idOrga;
    
SELECT novos.nome AS organizador_novato, C.*, antigos.nome AS organizador_orientador FROM Organizadores as novos
	JOIN Campanhas as C ON novos.idOrga = C.fkOrganizador
	JOIN Organizadores as antigos ON novos.orgaExperiente = antigos.idOrga
		WHERE novos.nome='Organizador 1';
