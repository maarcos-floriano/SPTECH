use sprint2;

create table Curso (
idCurso int PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50),
sigla char(3),
coordenador VARCHAR(30)
);

insert into Curso(nome, sigla, coordenador) VALUES
    ('Analise e Desenvolvimento de Sistemas', 'ADS', 'Marcos'),
    ('Sistemas da Informação', 'SI', 'Luca'),
    ('Ciencias da Computação', 'CCO', 'Matheus');  