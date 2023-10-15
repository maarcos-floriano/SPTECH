create database listaCinco;

use listaCinco;

-- Criar a tabela Alunos
CREATE TABLE Alunos (
    ra INT PRIMARY KEY,
    nome VARCHAR(45),
    telefone VARCHAR(13),
    id_representante INT,
    FOREIGN KEY (id_representante) REFERENCES Alunos(ra),
    fk_projeto INT,
    FOREIGN KEY (fk_projeto) REFERENCES Projetos(id_Projeto)
);

-- Criar a tabela Projetos
CREATE TABLE Projetos (
    id_projeto INT PRIMARY KEY,
    nome VARCHAR(30),
    descricao VARCHAR(45)
);

-- Criar a tabela Acompanhantes
CREATE TABLE Acompanhantes (
    id_acompanhante INT PRIMARY KEY,
    nome VARCHAR(30),
    tipo_relacao VARCHAR(45),
    fkAluno INT,
    FOREIGN KEY (fkAluno) REFERENCES Alunos(ra)
);

-- Inserir dados na tabela Alunos
INSERT INTO Alunos (ra, nome, telefone) VALUES
    (1, 'João Silva', '123-456-7890'),
    (2, 'Maria Santos', '987-654-3210'),
    (3, 'Pedro Souza', '555-555-5555');

-- Inserir dados na tabela Projetos
INSERT INTO Projetos (id_projeto, nome, descricao) VALUES
    (101, 'Projeto A', 'Descrição do Projeto A'),
    (102, 'Projeto B', 'Descrição do Projeto B');

-- Inserir dados na tabela Acompanhantes
INSERT INTO Acompanhantes (id_acompanhante, nome, tipo_relacao) VALUES
    (1, 'Pai do João', 'Pai'),
    (2, 'Amiga da Maria', 'Amiga'),
    (3, 'Irmão do Pedro', 'Irmão');

-- Inserir dados de representantes
UPDATE Alunos SET id_representante = 1 WHERE ra = 3;
UPDATE Alunos SET id_representante = 2 WHERE ra = 1;
UPDATE Alunos SET id_representante = 3 WHERE ra = 2;

-- Inserir dados dos Projetos
UPDATE Alunos SET fk_projeto = 101 WHERE ra = 3;
UPDATE Alunos SET fk_projeto = 101 WHERE ra = 1;
UPDATE Alunos SET fk_projeto = 102 WHERE ra = 2;

-- Inserir dados dos Acompanhantes
UPDATE Acompanhantes SET fkAluno = 1 WHERE id_acompanhante = 1;
UPDATE Acompanhantes SET fkAluno = 2 WHERE id_acompanhante = 2;
UPDATE Acompanhantes SET fkAluno = 3 WHERE id_acompanhante = 3;

-- Dados da tabela Alunos
SELECT * FROM Alunos;

-- Dados da tabela Projetos
SELECT * FROM Projetos;

-- Dados da tabela Acompanhantes
SELECT * FROM Acompanhantes;

-- Exibir dados das tabelas
SELECT Alunos.*, Projetos.* FROM Alunos JOIN Projetos on fk_projeto = id_projeto;

SELECT Alunos.*, Acompanhantes.* FROM Alunos JOIN Acompanhantes on fkAluno = ra;

SELECT * FROM Alunos as Aluno JOIN Alunos as Representante ON Aluno.ra = Representante.id_representante;

SELECT Alunos.nome as Aluno, Projetos.nome as Projeto FROM Alunos 
	JOIN Projetos ON fk_projeto = id_projeto
			WHERE Projetos.nome = 'Projeto A';
SELECT Alunos.*, Acompanhantes.*, Projetos.* FROM Alunos 
	JOIN Acompanhantes ON Alunos.ra = Acompanhantes.fkAluno 
	JOIN Projetos ON  Alunos.fk_projeto = Projetos.id_projeto;