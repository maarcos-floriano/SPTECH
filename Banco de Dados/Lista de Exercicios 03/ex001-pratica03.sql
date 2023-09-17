create database Sprint2;

use Sprint2;

create table Atleta (
idAtleta int primary key,
nome varchar(40),
modalidade varchar(40),
qtdMedalha int
);

insert into Atleta values
	(1, 'Marcos', 'Corrida', '3'),
	(2, 'Italo', 'Natacao', '5'),
	(3, 'Daivid', 'Futebol', '9'),
	(4, 'Henrique', 'Volei', '6'),
	(5, 'Kaique', 'Skate', '2');
    
create table Pais(
idPais int primary key auto_increment,
nome varchar(30),
capital varchar(40)
);

insert into Pais values
	(1, 'Brasil', 'Brasilia'),
    (2, 'Estados Unidos', 'Washington'),
    (3, 'Franca', 'Paris'),
    (4, 'Portugal', 'Lisboa');
    
alter table Atleta add column fkPais int;

alter table Atleta add constraint fkP 
	foreign key (fkPais) references Pais(idPais);
    
describe Atleta;

select * from Atleta;

UPDATE `sprint2`.`Atleta` SET `fkPais` = '1' WHERE (`idAtleta` = '1');
UPDATE `sprint2`.`Atleta` SET `fkPais` = '2' WHERE (`idAtleta` = '2');
UPDATE `sprint2`.`Atleta` SET `fkPais` = '3' WHERE (`idAtleta` = '3');
UPDATE `sprint2`.`Atleta` SET `fkPais` = '3' WHERE (`idAtleta` = '4');
UPDATE `sprint2`.`Atleta` SET `fkPais` = '2' WHERE (`idAtleta` = '5');

select 
Pais.nome as NomePais, 
Atleta.nome as NomeAtleta
	from Atleta 
    JOIN Pais
		ON fkPais = idPais;