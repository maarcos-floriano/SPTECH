-- Criação do banco de dados PraticaFuncionario
CREATE DATABASE PraticaFuncionario;

-- Seleção do banco de dados PraticaFuncionario
USE PraticaFuncionario;

-- Criação da tabela Setor
CREATE TABLE Setor (
    idSetor INT AUTO_INCREMENT PRIMARY KEY,  -- Identificador único do setor
    nomeSetor VARCHAR(45),                  -- Nome do setor
    numeroAndar INT                          -- Número do andar do prédio
);

-- Criação da tabela Funcionario
CREATE TABLE Funcionario (
    idFuncionario INT AUTO_INCREMENT PRIMARY KEY,  -- Identificador único do funcionário
    nomeFuncionario VARCHAR(45),                -- Nome do funcionário
    telefone VARCHAR(13),                        -- Número de telefone do funcionário
    salario DECIMAL(10, 2),  -- Salário do funcionário (maior que zero)
    idSetor INT,                                  -- Chave estrangeira para o setor em que trabalha
    FOREIGN KEY (idSetor) REFERENCES Setor(idSetor)
);

-- Criação da tabela Acompanhante
CREATE TABLE Dependente (
    idDependente INT AUTO_INCREMENT,            -- Identificador único do acompanhante
    idFuncionario INT,                            -- Chave estrangeira para o funcionário que convidou
    nomeDependente VARCHAR(45),                -- Nome do acompanhante
    tipoRelacao VARCHAR(45),                    -- Tipo de relação com o funcionário
    dataNascimento DATE,                          -- Data de nascimento do acompanhante
    PRIMARY KEY (idDependente, idFuncionario),  -- Chave primária composta
    FOREIGN KEY (idFuncionario) REFERENCES Funcionario(idFuncionario)
);

-- Inserção de dados nas tabelas
-- Inserir setores
INSERT INTO Setor (nomeSetor, numeroAndar) VALUES
('TI', 5),
('Marketing', 3);

-- Inserir funcionários
INSERT INTO Funcionario (nomeFuncionario, telefone, salario, idSetor) VALUES
('João', '123-456-7890', 5000.00, 1),  -- Funcionário no setor de TI
('Maria', '987-654-3210', 6000.00, 2);  -- Funcionário no setor de Marketing

-- Inserir acompanhantes
INSERT INTO Dependente (idFuncionario, nomeDependente, tipoRelacao, dataNascimento) VALUES
(1, 'Ana', 'Esposa', '1990-01-15'),
(1, 'Pedro', 'Filho', '2015-03-20'),
(2, 'Lucia', 'Amiga', '1988-08-10');

-- Exibir todos os dados de cada tabela
-- Tabela Setor
SELECT * FROM Setor;

-- Tabela Funcionario
SELECT * FROM Funcionario;

-- Tabela Acompanhante
SELECT * FROM Dependente;

-- Exibir os dados dos setores e dos seus respectivos funcionários
SELECT S.nomeSetor, F.nomeFuncionario
FROM Setor S
JOIN Funcionario F ON S.idSetor = F.idSetor;

-- Exibir os dados de um determinado setor e dos seus respectivos funcionários (por exemplo, TI)
SELECT S.nomeSetor, F.nomeFuncionario
FROM Setor S
JOIN Funcionario F ON S.idSetor = F.idSetor
WHERE S.nomeSetor = 'TI';

-- Exibir os dados dos funcionários e de seus acompanhantes
SELECT F.nomeFuncionario, D.nomeDependente
FROM Funcionario F
LEFT JOIN Dependente D ON F.idFuncionario = D.idFuncionario;

-- Exibir os dados de apenas um funcionário e seus acompanhantes (por exemplo, João)
SELECT F.nomeFuncionario, D.nomeDependente
FROM Funcionario F
LEFT JOIN Dependente D ON F.idFuncionario = D.idFuncionario
WHERE F.nomeFuncionario = 'João';

-- Exibir os dados dos funcionários, dos setores em que trabalham e dos seus acompanhantes
SELECT S.nomeSetor, F.nomeFuncionario, D.nomeDependente
FROM Setor S
JOIN Funcionario F ON S.idSetor = F.idSetor
LEFT JOIN Dependente D ON F.idFuncionario = D.idFuncionario;
