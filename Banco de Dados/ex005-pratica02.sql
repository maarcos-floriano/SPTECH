USE sprint1;
-- Criar a tabela chamada Curso para conter os dados: idCurso, nome (tamanho 50), sigla 
-- (tamanho 3), coordenador, sendo que idCurso é a chave primária da tabela.
create table Curso (
	idCurso INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    sigla VARCHAR(3),
    coordenador VARCHAR(30)
);

-- Inserir dados na tabela, procure inserir pelo menos 3 cursos.
INSERT INTO Curso(nome, sigla, coordenador) VALUES
	('Tecnologia da Informacao', 'TI', 'Marcos'),
    ('Algoritmo', 'ALG', 'JP'),
    ('Banco de dados', 'BD', 'Vivian');
-- Execute os comandos para:
-- a) Exibir todos os dados da tabela.
SELECT * FROM Curso;
-- b) Exibir apenas os coordenadores dos cursos.
SELECT coordenador FROM Curso;
-- c) Exibir apenas os dados dos cursos de uma determinada sigla.
SELECT * FROM Curso WHERE sigla = 'TI';
-- d) Exibir os dados da tabela ordenados pelo nome do curso.
SELECT * FROM Curso order by nome;
-- e) Exibir os dados da tabela ordenados pelo nome do coordenador em ordem decrescente.
SELECT * FROM Curso order by coordenador desc;
-- f) Exibir os dados da tabela, dos cursos cujo nome comece com uma determinada letra.
SELECT * FROM Curso WHERE nome LIKE 'T%';
-- g) Exibir os dados da tabela, dos cursos cujo nome termine com uma determinada letra.
SELECT * FROM Curso WHERE nome LIKE '%S';
-- h) Exibir os dados da tabela, dos cursos cujo nome tenha como segunda letra uma determinada letra.
SELECT * FROM Curso WHERE nome LIKE '_E%';
-- i) Exibir os dados da tabela, dos cursos cujo nome tenha como penúltima letra uma determinada letra.
SELECT * FROM Curso WHERE nome LIKE '%M_';
-- j) Elimine a tabela
-- DROP TABLE Curso;
-- TRUNCATE Curso;