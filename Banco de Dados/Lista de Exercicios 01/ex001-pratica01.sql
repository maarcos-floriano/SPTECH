create database sprint1;

use sprint1;

create table Atleta (
idAtleta int primary key, 
nome varchar(40), 
modalidade varchar(40),
qtdMedalha int
);

insert into atleta values 
	(01 , 'marquinhos' , 'skate', 56),
    (02, 'raissinha' , 'basquete', 34),
    (03 , 'willians', 'ginasta', 02),
    (04, 'samuel', 'bailarino', 00);

select * from atleta; 

select nome, qtdMedalha from atleta;

select * from atleta where modalidade = 'skate';

select * from atleta order by modalidade;

select * from atleta order by qtdMedalha desc;

select * from atleta
	where nome like '%s%';
    
select * from atleta
	where nome like 'r%'; 
    
select * from atleta
	where nome like '%l';
    
select * from atleta 
	where nome like '%n_';
    
drop table atleta;
