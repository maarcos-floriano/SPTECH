use sprint1; 

create table filme(
idFilme int primary key,
titulo varchar(50),
genero varchar(40),
Diretor varchar (40) 
);

insert into filme values 
	(1 , 'batman' , 'açao' , 'marquinhos'),
    (2 , 'enrolados' , 'animaçao' , 'raissinha'),
    (3 , 'ratatouille' , 'animaçao' , 'willians'),
    (4 , 'gente grande' , 'comedia' , 'samuel'),
    (5 , 'anabelle' , 'terror' , 'karina'),
    (6 , 'barbie' , 'fantasia' , 'raissinha'),
    (7 , 'titanic' , 'ramance' , 'sabrina');
    
-- Exibir todos os dados da tabela.
-- Exibir apenas as especialidades dos professores.
-- Exibir apenas os dados dos professores de uma determinada especialidade.
-- Exibir os dados da tabela ordenados pelo nome do professor.
-- Exibir os dados da tabela ordenados pela data de nascimento do professor em ordem decrescente.
-- Exibir os dados da tabela, dos professores cujo nome comece com uma determinada letra.
-- Exibir os dados da tabela, dos professores cujo nome termine com uma determinada letra.
-- Exibir os dados da tabela, dos professores cujo nome tenha como segunda letra uma determinada letra.
-- Exibir os dados da tabela, dos professores cujo nome tenha como penúltima letra uma determinada letra.
-- Elimine a tabela