-- Criação do banco de dados Treinador
CREATE DATABASE Treinador;

-- Seleção do banco de dados Treinador
USE Treinador;

-- Criação da tabela Nadador
CREATE TABLE Nadador (
    idNadador INT AUTO_INCREMENT PRIMARY KEY,  -- Identificador único do nadador
    nome VARCHAR(45),                         -- Nome do nadador
    estadoOrigem VARCHAR(45),                  -- Estado de origem do nadador
    dataNascimento DATE                         -- Data de nascimento do nadador
);

-- Criação da tabela Treinador
CREATE TABLE Treinador (
    idTreinador INT AUTO_INCREMENT PRIMARY KEY,  -- Identificador único do treinador
    nomeTreinador VARCHAR(45),                 -- Nome do treinador
    telefone VARCHAR(13),                      -- Número de telefone do treinador
    emailTreinador VARCHAR(45)                 -- E-mail do treinador
);

-- Criação da tabela Orientacao
CREATE TABLE Orientacao (
    idOrientacao INT AUTO_INCREMENT PRIMARY KEY,  -- Identificador único da orientação
    idTreinadorNovato INT,                      -- Chave estrangeira para o treinador novato
    idTreinadorExperiente INT,                  -- Chave estrangeira para o treinador experiente
    FOREIGN KEY (idTreinadorNovato) REFERENCES Treinador(idTreinador),
    FOREIGN KEY (idTreinadorExperiente) REFERENCES Treinador(idTreinador)
);

-- Inserção de dados nas tabelas
-- Inserir nadadores
INSERT INTO Nadador (nome, estadoOrigem, dataNascimento) VALUES
('Nadador1', 'Rio de Janeiro', '1995-02-10'),
('Nadador2', 'São Paulo', '1998-05-20');

-- Inserir treinadores
INSERT INTO Treinador (nomeTreinador, telefone, emailTreinador) VALUES
('Treinador1', '123-456-7890', 'treinador1@email.com'),
('Treinador2', '987-654-3210', 'treinador2@email.com');

-- Inserir orientações (treinadores novatos orientados por treinadores experientes)
INSERT INTO Orientacao (idTreinadorNovato, idTreinadorExperiente) VALUES
(2, 1);

-- Exibir todos os dados de cada tabela
-- Tabela Nadador
SELECT * FROM Nadador;

-- Tabela Treinador
SELECT * FROM Treinador;

-- Tabela Orientacao
SELECT * FROM Orientacao;

-- Exibir os dados dos treinadores e dos seus respectivos nadadores
SELECT T.nomeTreinador, N.nome
FROM Treinador T
LEFT JOIN Orientacao O ON T.idTreinador = O.idTreinadorNovato
LEFT JOIN Nadador N ON O.idTreinadorExperiente = N.idNadador;

-- Exibir os dados de um determinado treinador e os dados de seus respectivos nadadores (por exemplo, Treinador1)
SELECT T.nomeTreinador, N.nome
FROM Treinador T
LEFT JOIN Orientacao O ON T.idTreinador = O.idTreinadorNovato
LEFT JOIN Nadador N ON O.idTreinadorExperiente = N.idNadador
WHERE T.nomeTreinador = 'Treinador1';

-- Exibir os dados dos treinadores e os dados dos respectivos treinadores orientadores
SELECT T1.nomeTreinador AS TreinadorNovato, T2.nomeTreinador AS TreinadorExperiente
FROM Orientacao O
JOIN Treinador T1 ON O.idTreinadorNovato = T1.idTreinador
JOIN Treinador T2 ON O.idTreinadorExperiente = T2.idTreinador;

-- Exibir os dados dos treinadores e os dados dos respectivos treinadores orientadores de um determinado treinador orientador (por exemplo, Treinador1)
SELECT T1.nomeTreinador AS TreinadorNovato, T2.nomeTreinador AS TreinadorExperiente
FROM Orientacao O
JOIN Treinador T1 ON O.idTreinadorNovato = T1.idTreinador
JOIN Treinador T2 ON O.idTreinadorExperiente = T2.idTreinador
WHERE T2.nomeTreinador = 'Treinador1';

-- Exibir os dados dos treinadores, os dados dos respectivos nadadores e os dados dos respectivos treinadores orientadores
SELECT T.nomeTreinador, N.nome AS NomeNadador, TOrientado.nomeTreinador AS TreinadorOrientador FROM Treinador T
	LEFT JOIN Orientacao O ON T.idTreinador = O.idTreinadorNovato
	LEFT JOIN Nadador N ON O.idTreinadorExperiente = N.idNadador
	LEFT JOIN Treinador TOrientado ON O.idTreinadorExperiente = TOrientado.idTreinador;

-- Exibir os dados de um treinador, os dados dos respectivos nadadores e os dados do seu treinador orientador (por exemplo, Treinador1)
SELECT T.nomeTreinador, N.nome AS NomeNadador, TOrientado.nomeTreinador AS TreinadorOrientador
FROM Treinador T
LEFT JOIN Orientacao O ON T.idTreinador = O.idTreinadorNovato
LEFT JOIN Nadador N ON O.idTreinadorExperiente = N.idNadador
LEFT JOIN Treinador TOrientado ON O.idTreinadorExperiente = TOrientado.idTreinador
WHERE T.nomeTreinador = 'Treinador1';
