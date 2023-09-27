create database faculdade;

use faculdade;

create table Professores (
    idProfessor int primary key auto_increment,
    nome varchar(50),
    sobrenome varchar(30),
    espec1 varchar(40),
    espec2 varchar(40)
);

insert into Professores(nome, sobrenome, espec1, espec2) values
    ('Joao', 'Silva', 'Matematica', 'Hardware'),
    ('Maria', 'Santos', 'Portugues', 'Psicologia'),
    ('Pedro','Oliveira', 'Fisica', 'Dados'),
    ('Marcos', 'Floriano', 'Eletronica', 'CiberSegurança'),
    ('Agatha', 'Ferreira', 'Quimica', 'RedHat'),
    ('Ana', 'Soares', 'Pedagocia', 'Informatica');

create table Disciplina (
    idDisc int primary key auto_increment,
    nomeDisc varchar(45),
    fkProfessor int,
    constraint fkProf foreign key(fkProfessor) references Professor(idProfessor)
);

insert into Disciplina(nomeDisc, fkProfessor) values
    ('Banco de Dados', 1),
    ('Algoritimo', 2),
    ('Arc Comp', 3),
    ('TI', 4),
    ('Socio', 5),
    ('PI', 6);

