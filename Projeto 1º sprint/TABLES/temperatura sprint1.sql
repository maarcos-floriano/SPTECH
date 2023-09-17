USE sprint1;

CREATE TABLE temperatura (
idHack int primary key auto_increment,
apelido varchar(20) default 'Sem Apelido',
temperatura int not null,
umidade int not null,
localidade varchar(30) default 'Nao informado',
dtRegistro datetime default current_timestamp
);

INSERT INTO temperatura(apelido, temperatura, umidade, localidade, dtRegistro) VALUES
	('Aguia', 60, 30, 'Corredor 3', '2023-09-02');
    
INSERT INTO temperatura(apelido, temperatura, umidade, localidade) VALUES
	('Leao', 60, 30, 'Corredor 2'),
    ('Masqueico', 70, 20, 'Corredor 3'),
    ('T-Rex', 80, 10, 'Corredor 1');
    
SELECT * FROM TEMPERATURA;