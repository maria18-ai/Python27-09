DROP DATABASE BDEscolar;
CREATE DATABASE BDEscolar;
USE BDEscolar;

CREATE TABLE Professores (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    CPF VARCHAR(20)
);

CREATE TABLE Turmas (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    NomeTurma VARCHAR(20) NOT NULL,
    ProfessorID INT,
    FOREIGN KEY (ProfessorID) REFERENCES Professores(ID)
);

CREATE TABLE Alunos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(50) NOT NULL,
    DataNascimento DATE,
    TurmaID INT,
    FOREIGN KEY (TurmaID) REFERENCES Turmas(ID)
);

CREATE TABLE Disciplinas (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    NomeDisciplina VARCHAR(30) NOT NULL,
    TurmaID INT,
    FOREIGN KEY (TurmaID) REFERENCES Turmas(ID)
);

CREATE TABLE UnidadesEscolares (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    NomeUnidade VARCHAR(50) NOT NULL,
    Endereco VARCHAR(100)
);

-- Inserção de Professores
INSERT INTO Professores (Nome,CPF) VALUES ('Enzo', '234.765.877-98');
INSERT INTO Professores (Nome,CPF) VALUES ('Gleison','231.900.456-08');
INSERT INTO Professores (Nome,CPF) VALUES ('Amanda','786.983.822-70');
INSERT INTO Professores (Nome,CPF) VALUES ('Ismael','376.456.232-32');
INSERT INTO Professores (Nome,CPF) VALUES ('Lilia','679.039.234-64');
INSERT INTO Professores (Nome,CPF) VALUES ('Emília','346.067.876.33');
SELECT * FROM Professores;

-- Inserção de Turmas
INSERT INTO Turmas (NomeTurma, ProfessorID) VALUES ('Turma A', 1);
INSERT INTO Turmas (NomeTurma, ProfessorID) VALUES ('Turma B', 2);
INSERT INTO Turmas (NomeTurma, ProfessorID) VALUES ('Turma C', 3);
INSERT INTO Turmas (NomeTurma, ProfessorID) VALUES ('Turma D', 4);
INSERT INTO Turmas (NomeTurma, ProfessorID) VALUES ('Turma E', 5);
INSERT INTO Turmas (NomeTurma, ProfessorID) VALUES ('Turma F', 6);
SELECT * FROM Turmas;

-- Inserção de Alunos 
INSERT INTO Alunos (Nome, DataNascimento, TurmaID)
VALUES
    ('Alice da Silva', '2010-01-01', 1),
    ('Bob Souza', '2010-02-02', 1),
    ('Carol Santos', '2010-03-03', 1),
    ('Daniel Lopes', '2010-04-04', 1),
    ('Érika Oliveira', '2010-05-05', 1),
    ('Fernando Pereira', '2010-06-06', 2),
    ('Gabriela Miranda', '2010-07-07', 2),
    ('Hugo Costa', '2010-08-08', 2),
    ('Isabella Oliveira', '2010-09-09', 2),
    ('João Silva', '2010-10-10', 2),
    ('Karina Santos', '2010-11-11', 3),
    ('Lucas Lopes', '2010-12-12', 3),
    ('Mariana Pereira', '2011-01-01', 3),
    ('Pedro Miranda', '2011-02-02', 3),
    ('Rafaela Costa', '2011-03-03', 3),
    ('João Carlos', '2009-07-03', 4),
    ('Juse Carvalho', '2011-05-14', 4),
    ('Eduarda Camrago', '2009-10-03', 4),
    ('Lara Machado', '2011-06-01', 4),
    ('Marcelo Teodoro', '2011-12-23', 4),
    ('Jorge Medeiros', '2009-02-03', 5),
    ('Maria Julia', '2011-08-16', 5), 
    ('Eduardo Willian', '2010-12-08', 5),
    ('Laura Vieira', '2010-07-01', 5),
    ('Cassio Souza', '2011-10-03', 5),
    ('Phelipe Azevedo', '2009-04-11', 6),
    ('Salína Maia', '2011-11-14', 6),
    ('Josefina Soares', '2009-12-23', 6),
    ('Enzo Castro', '2011-09-01', 6),
    ('Márcia Souza', '2011-12-01', 6);
SELECT * FROM Alunos;
    
--  Inserção de Disciplinas 
INSERT INTO Disciplinas (NomeDisciplina, TurmaID) VALUES ('Banco de dados', 1);
INSERT INTO Disciplinas (NomeDisciplina, TurmaID) VALUES ('Front-End', 2);
INSERT INTO Disciplinas (NomeDisciplina, TurmaID) VALUES ('Back-End', 3);
INSERT INTO Disciplinas (NomeDisciplina, TurmaID) VALUES ('Fluxogramas', 4);
INSERT INTO Disciplinas (NomeDisciplina, TurmaID) VALUES ('Desing Web', 5);
INSERT INTO Disciplinas (NomeDisciplina, TurmaID) VALUES ('Mobile', 6);
SELECT * FROM Disciplinas;

-- Inserção Unidades

INSERT INTO UnidadesEscolares (NomeUnidade, Endereco) 
VALUES 
	('Escola TI de Formação BH', 'R. São Paulo 456 Centro'),
    ('Escola TI de Formação ST', 'R. São Benedito 240 Santa Luzia'),
    ('Escola TI de Formação IP', 'R. Diamantes 308 Ipatinga');

SELECT * FROM unidadesescolares;
