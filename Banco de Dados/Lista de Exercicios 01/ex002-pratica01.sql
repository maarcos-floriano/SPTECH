use sprint1;

create table musica(
idMusica INT PRIMARY KEY,
titulo varchar(40),
artista varchar(40),
genero varchar(40)
);

insert into musica values 
	(1 , 'celine' , 'vulgoFk' , 'trap'),
    (2 , 'pecado' , 'McHariel' , 'funk'),
    (3 , 'ate que durou' , 'Pericles' , 'pagode'),
    (4 , 'alma pura' , 'vulgoFk', 'funk'),
    (5 , 'fye' , 'veigh' , 'trap'),
    (6 , 'ela se envolve' , 'McGp', 'funk'),
    (7 , 'brinks!' , 'kyan' , 'trap');
    
select * from musica;

select titulo, artista from musica;

select * from musica 
	where genero = 'funk';
    
select * from musica	
	WHERE artista = 'vulgoFk';
    
select * from musica order by titulo; 

select * from musica order by artista desc; 

select * from musica
	where titulo like 'p%'; 
    
select * from musica
	where artista like '%k'; 
    
select * from musica 
	where genero like '_a%';
    
select * from musica 
	where titulo like '%y_';

drop table musica;