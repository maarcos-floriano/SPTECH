USE sprint1;

CREATE TABLE DadosRevista (
    idRevista INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(40),
    categoria VARCHAR(30)
);

INSERT INTO DadosRevista (nome) VALUES
    ('Veja'),
    ('Isto é'),
    ('Época'),
    ('Quatro Rodas');

-- Exibir todos os dados da tabela
SELECT * FROM DadosRevista;

-- Atualizar os dados das categorias das 3 revistas inseridas e verificar a atualização
UPDATE DadosRevista SET categoria = 'Notícias' 
	WHERE idRevista <= 3;
    
SELECT * FROM DadosRevista;

-- Inserir mais 3 registros completos
INSERT INTO DadosRevista (nome, categoria) VALUES
    ('Claudia', 'Moda'),
    ('Super Interessante', 'Ciência'),
    ('National Geographic', 'Geografia');

-- Exibir novamente os dados da tabela
SELECT * FROM DadosRevista;

-- Exibir a descrição da estrutura da tabela
DESCRIBE DadosRevista;

-- Alterar a tabela para que a coluna categoria possa ter no máximo 40 caracteres
ALTER TABLE DadosRevista MODIFY categoria VARCHAR(40);

-- Exibir novamente a descrição da estrutura da tabela para verificar a alteração
DESCRIBE DadosRevista;

-- Acrescentar a coluna periodicidade à tabela
ALTER TABLE DadosRevista ADD periodicidade VARCHAR(15);

-- Exibir os dados da tabela
SELECT * FROM DadosRevista;

-- Excluir a coluna periodicidade da tabela
ALTER TABLE DadosRevista DROP COLUMN periodicidade;

SELECT * FROM DadosRevista;

UPDATE DadosRevista SET categoria = 'Notícias' 
	WHERE idRevista = 4;