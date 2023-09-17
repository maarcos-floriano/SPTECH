use sprint1;

create table Professor(
idProfessor int primary key,
nome varchar(50),
especialidade varchar(40),
dtNasc date
);

insert into professor values
	(1, 'Anthony', 'Banco de Dados', '1998-05-25'),
    (2, 'Samuel', 'Tecnoloogia da Informacao', '1990-02-20'),
    (3, 'Raphael', 'Algoritimo', '2000-05-13'),
    (4, 'Willians', 'Arquitetura de Computadores', '1980-02-13'),
    (5, 'Marcos', 'Matematica', '2003-05-13'),
    (6, 'Raissa', 'Biologia', '2005-02-13');
    
-- Exibir todos os dados da tabela.
select * from Professor;

-- Exibir apenas as especialidades dos professores.
select especialidade from Professor;

-- Exibir apenas os dados dos professores de uma determinada especialidade.
select * from Professor
	where especialidade = 'Matematica';

-- Exibir os dados da tabela ordenados pelo nome do professor.
select * from Professor order by nome;

-- Exibir os dados da tabela ordenados pela data de nascimento do professor em ordem decrescente.
select * from Professor order by dtNasc desc;

-- Exibir os dados da tabela, dos professores cujo nome comece com uma determinada letra.
select * from Professor
	where nome like 'a%';

-- Exibir os dados da tabela, dos professores cujo nome termine com uma determinada letra.
select * from Professor
	where nome like '%l';

-- Exibir os dados da tabela, dos professores cujo nome tenha como segunda letra uma determinada letra.
select * from Professor
	where nome like '_a%';

-- Exibir os dados da tabela, dos professores cujo nome tenha como penúltima letra uma determinada letra.
select * from Professor
	where nome like '%e_';
    
-- Elimine a tabela
drop table Professor;