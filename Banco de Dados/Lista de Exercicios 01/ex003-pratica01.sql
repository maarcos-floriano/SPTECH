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
select * from filme;

-- Exibir apenas os títulos e os diretores dos filmes.
select titulo, diretor from filme;

-- Exibir apenas os dados dos filmes de um determinado gênero.
select * from filme
	where genero = 'animaçao';

-- Exibir apenas os dados dos filmes de um determinado diretor.
select * from filme
	where diretor = 'raissinha';

-- Exibir os dados da tabela ordenados pelo título do filme.
select * from filme order by titulo;

-- Exibir os dados da tabela ordenados pelo diretor em ordem decrescente.
select * from filme order by diretor desc;

-- Exibir os dados da tabela, dos filmes cujo título comece com uma determinada letra.
select * from filme
	where titulo like 'b%'; 

-- Exibir os dados da tabela, dos filmes cujo diretor termine com uma determinada letra.
select * from filme
	where diretor like '%a';

-- Exibir os dados da tabela, dos filmes cujo gênero tenha como segunda letra uma determinada letra.
select * from filme
	where genero like '_n%';

-- Exibir os dados da tabela, dos filmes cujo título tenha como penúltima letra uma determinada letra.
select * from filme
	where titulo like '%l_';

-- Elimine a tabela
drop table filme;