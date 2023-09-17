use sprint2;

create table Musica (
idMusica int primary key auto_increment,
titulo char(40),
artista char(40),
genero char(40)
);

insert into Musica(titulo, artista, genero) values
	('total 90', 'Kyan', 'Trap'),
    ('Mandraka', 'Veigh', 'Trap'),
    ('Chefin', 'Kyan', 'Drill');
    
create table Album (
idAlbum int primary key auto_increment,
nome varchar(30),
tipo varchar(40),
constraint ck_tipo
	check (tipo in ('digital', 'fisico')),
dtLancamento date
);

insert into Album(nome, tipo, dtLancamento) values
('Dos Predios', 'digital', '2022-11-25');

insert into Album values
	(null, 'Um quebrada inteligente', 'digital', '2023-06-20');
    
insert into Album(nome, tipo, dtLancamento) values
	('EVDC', 'fisico', '1990-09-23');
    
select * from Musica;

delete from Musica where idMusica >= 4;

select * from Album;

alter table musica add column fkAlbum int;

alter table musica add constraint iptFk 
	foreign key (fkAlbum) references Album(idAlbum);
    
select * from Musica
	join Album on idAlbum = fkAlbum;

select Musica.titulo as Musica, Album.nome as Album from Musica
	join Album on idAlbum = fkAlbum;
    
select Musica.titulo as Musica, Album.nome as Album from Musica
	join Album on idAlbum = fkAlbum
		where tipo = 'fisico';

select * from Musica
	join Album on idAlbum = fkAlbum
		where tipo = 'fisico';