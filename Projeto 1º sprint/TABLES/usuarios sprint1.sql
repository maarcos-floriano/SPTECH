USE sprint1;

CREATE TABLE Parceiros (
idSocio int primary key auto_increment,
nomeRepresentante varchar(30) not null,
empresaVinculada varchar(50),
login varchar(20) unique not null,
senha varchar(20) not null,
email varchar(40) default 'Masqueico@email.com'
);


INSERT INTO Parceiros(nomeRepresentante, empresaVinculada, login, senha) VALUES
	('Eric Silva', 'Stefanini', 'eric.silva', 'senha123'),
    ('Amanda Ferreira', 'SPTECH', 'amanda.ferreira', 'amanda123'),
    ('Luana Oliveira', 'Box Entregas', 'luana.oliveira', 'box789'),
    ('Rayssa Uyema', 'Safra', 'rayssa.uyema', 'Uyem@2023');
    
select * from parceiros;

UPDATE parceiros set email = 'mamaco@hotmail.com' where idSocio = 4;