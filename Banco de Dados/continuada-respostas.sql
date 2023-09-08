CREATE DATABASE continuada1;

USE continuada1;

CREATE TABLE historico (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(200) NOT NULL,
dataHora DATETIME DEFAULT current_timestamp,
url VARCHAR(250) NOT NULL,
navegador VARCHAR(100)
);

INSERT INTO historico (nome, url, navegador) VALUES
	('São Paulo Tech School', 'https://moodle.sptech.school/', 'Microsoft Edge'),
	('Página Inicial - Microsoft Azure', 'https://portal.azure.com/#home', 'Microsoft Edge'),
	('Ofertas e Promoções | Amazon.com.br', 'https://www.amazon.com.br/deals?ref_=nav_cs_gb', 'Firefox Developer Edition'),
	('404 Not Found', 'http://moodletech.azurewebsites.net/', 'Firefox Developer Edition'),
	('Working...', 'https://login.microsoftonline.com/kmsi', 'Firefox Developer Edition'),
	('Email - Usuario Aluno - Outlook', 'https://outlook.office.com/mail/', 'Firefox Developer Edition'),
	('Solicitações - Suporte - Digital Building', 'https://bandtec.sdpondemand.manageengine.com/app/itdesk/ui/requests', 'Firefox Developer Edition'),
	('Carrinho de compras da Amazon.com', 'https://www.amazon.com.br/gp/cart/view.html?ref_=nav_cart', 'Firefox Developer Edition'),
	('MySQL | Begin Your Download', 'https://dev.mysql.com/downloads/file/?id=516926', 'Firefox Developer Edition'),
	('MySQL | Download MySQL Installer', 'https://dev.mysql.com/downloads/installer/', 'Firefox Developer Edition');

/*Ex001*/
ALTER TABLE historico MODIFY COLUMN url VARCHAR(500);

/*Ex002*/
SELECT * FROM historico WHERE url LIKE '%/';

/*Ex003*/
II - O comando TRUNCATE TABLE é um comando DDL;

/*Ex004*/
SELECT * FROM historico WHERE url LIKE '%t_';

/*Ex005*/
DROP TABLE historico;

/*Ex006*/
SELECT * FROM historico WHERE nome LIKE '%Download%';
DELETE FROM historico WHERE id in (9,10);

/*Ex007*/
ALTER TABLE historico RENAME COLUMN nome TO titulo;

/*Ex008*/
INSERT INTO historico (nome, url, dataHora) VALUES
	('Fazer login no Canvas (instructure.com)', 'https://awsacademy.instructure.com/login/canvas', '2023-02-16 10:36:00');

/*Ex009*/
SELECT nome FROM historico WHERE navegador = 'Microsoft Edge';

/*Ex010*/
ALTER TABLE historico DELETE COLUMN navegador;

/*Ex011*/
ALTER TABLE historico ADD CONSTRAINT 
	CHECK (navegador IN ('Microsoft Edge', 'Firefox Developer Edition', 'Google Chrome'));

/*Ex012*/
INSERT INTO historico (nome, url, navegador) VALUES 
	('404 Not Found', 'http://moodletech.azurewebsites.net/', 'Google Chrome');

SELECT * FROM historico WHERE nome = '404 Not Found' AND navegador = 'Google Chrome';
/*Ex013*/
ALTER TABLE historico ADD COLUMN sistOp VARCHAR(30);

/*Ex015*/
SELECT * FROM historico WHERE url LIKE '%amazon%';

/*Ex016*/
SELECT * FROM historico WHERE nome LIKE 'M%';

/*Ex017*/
SELECT id FROM historico WHERE nome = 'Working...';
UPDATE historico SET navegador = 'Google Chrome' WHERE id = 5;

/*Ex018*/
SELECT id FROM historico WHERE nome = 'Página Inicial - Microsoft Azure';
UPDATE historico SET dataHora = 2023-02-31 08:00:00 WHERE id = 2;

/*Ex015*/
/*Ex015*/
/*Ex015*/