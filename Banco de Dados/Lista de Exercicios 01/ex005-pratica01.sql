USE sprint1;

CREATE TABLE Curso (
    idCurso INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    sigla VARCHAR(3),
    coordenador VARCHAR(50)
);

INSERT INTO Curso (nome, sigla, coordenador) VALUES
    ('Tecnologia da Informacao', 'TI', 'João Silva'),
    ('Administração', 'ADM', 'Maria Oliveira'),
    ('Psicologia', 'PSI', 'Marcos Floriano');

-- Exibir todos os dados da tabela
SELECT * FROM Curso;

-- Exibir apenas os coordenadores dos cursos
SELECT coordenador FROM Curso;

-- Exibir apenas os dados dos cursos de uma determinada sigla (por exemplo, 'ECV')
SELECT * FROM Curso 
	WHERE sigla = 'TI';

-- Exibir os dados da tabela ordenados pelo nome do curso
SELECT * FROM Curso ORDER BY nome;

-- Exibir os dados da tabela ordenados pelo nome do coordenador em ordem decrescente
SELECT * FROM Curso ORDER BY coordenador DESC;

-- Exibir os dados da tabela dos cursos cujo nome comece com uma determinada letra (por exemplo, 'E')
SELECT * FROM Curso 
	WHERE nome LIKE 'T%';

-- Exibir os dados da tabela dos cursos cujo nome termine com uma determinada letra (por exemplo, 'ão')
SELECT * FROM Curso 
	WHERE nome LIKE '%ão';

-- Exibir os dados da tabela dos cursos cujo nome tenha como segunda letra uma determinada letra (por exemplo, 'd')
SELECT * FROM Curso 
	WHERE nome LIKE '_d%';

-- Exibir os dados da tabela dos cursos cujo nome tenha como penúltima letra uma determinada letra (por exemplo, 'a')
SELECT * FROM Curso 
	WHERE nome LIKE '%a_';

-- Eliminar a tabela
DROP TABLE Curso;