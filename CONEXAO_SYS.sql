CREATE TABLE Ambulatorios (
 nroa NUMBER PRIMARY KEY,
 andar NUMBER NOT NULL,
 capacidade NUMBER
);

CREATE TABLE Medicos (
 codm NUMBER PRIMARY KEY,
 CPF NUMBER(11) UNIQUE,
 nome VARCHAR2(40) NOT NULL,
 idade NUMBER NOT NULL,
 especialidade VARCHAR2(20),
 cidade VARCHAR2(30),
 nroa NUMBER,
 FOREIGN KEY(nroa) REFERENCES Ambulatorios(nroa)
);
-- COMANDOS SQL DML (manipulação de dados)
INSERT INTO Ambulatorios VALUES (1, 3, 40);
INSERT INTO Ambulatorios VALUES (2, 1, 50);
INSERT INTO Ambulatorios VALUES (3, 2, 40);
INSERT INTO Ambulatorios VALUES (4, 2, 25);
INSERT INTO Ambulatorios VALUES (5, 2, 55);

INSERT INTO Ambulatorios VALUES (6, 1, 21);
INSERT INTO Ambulatorios VALUES (7, 1, 22);

INSERT INTO Medicos VALUES (1, 10000100000, 'Joao', 40, 'ortopedia', 'Florianopolis', 1);
INSERT INTO Medicos VALUES (2, 10000110000, 'Maria', 42, 'traumatologia', 'Blumenau', 2);
INSERT INTO Medicos VALUES (3, 11000100000, 'Pedro', 51, 'pediatria', 'São José', 2);
INSERT INTO Medicos VALUES (4, 11000110000, 'Carlos', 28, 'ortopedia', 'Joinville', NULL);
INSERT INTO Medicos VALUES (5, 11000111000, 'Marcia', 33, 'neurologia', 'Biguacu', 3);

INSERT INTO Medicos VALUES (6, 11000111010, 'Jose', 33, 'ginecologista', 'Apucarana', 3);
INSERT INTO Medicos VALUES  (7, 11000111100, 'Jean', 33, 'otorrino', 'Arapongas', 3);



