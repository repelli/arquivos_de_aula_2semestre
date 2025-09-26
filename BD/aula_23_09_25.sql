CREATE DATABASE Empresa;

USE Empresa;

CREATE TABLE Funcionario(
 Codigo INT PRIMARY KEY,
 nome NVARCHAR(100)
 );

 INSERT INTO Funcionario (Codigo,nome)
 VALUES(1,'Kessia'),
 (2,'Tiago')


 INSERT INTO Funcionario VALUES
 (3,'Ordilei')

SELECT * FROM Funcionario;

SELECT nome, Codigo FROM Funcionario;

SELECT * FROM Funcionario
WHERE Codigo > 2;

SELECT * FROM Funcionario
WHERE nome like 'T%';

SELECT * FROM Funcionario
WHERE nome like '%a';



SELECT * FROM Funcionario
WHERE nome like '%a%';


SELECT * FROM Funcionario
ORDER BY Codigo DESC;


SELECT * FROM Funcionario
ORDER BY Codigo ASC;


SELECT * FROM Funcionario
ORDER BY nome DESC  ;


--DESC - decrescente
--ASC -- crescente


-- ATUALIZA��O DE REGISTROS
UPDATE funcionario SET nome = 'kessia Milena'
WHERE nome = 'Kessia';

SELECT * FROM Funcionario;


--ATUALIZA��O SEM FILTRO (N�O FAZER) -- MUDA TODOS OS DADOS
UPDATE funcionario SET nome = 'kessia Milena'

-- EXCLUSAO DE DADOS ** N�O ESQUECER DE USARO O WHERE
DELETE FROM Funcionario
WHERE Codigo = 1;

