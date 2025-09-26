-- DDL - liguagem d definição de dados

CREATE DATABASE Clinica_Medica;
GO -- USA UM COMANDO POR VEZ AO INVÉS DE TODOS
USE Clinica_Medica;


CREATE TABLE Paciente(
CPF VARCHAR(14) PRIMARY KEY,
Nome nvarchar(40),
Telefone varchar(30),
NumeroPlano int,
NomePlano varchar(20),
tipoPlano varchar(10)
);

GO

CREATE TABLE Medico(
CRM INT PRIMARY KEY,
NomeMedico varchar(30),
Especialidade varchar(20)

);

GO

CREATE TABLE Consulta(
NumeroConsulta INT PRIMARY KEY IDENTITY(100,1), -- INICIA EM 100 E INCREMENTA DE 1 EM 1
CPF_Paciente varchar(14) FOREIGN KEY REFERENCES Paciente(CPF),
CRM_Medico INT FOREIGN KEY REFERENCES Medico(CRM), -- DIZ EM QUAL TABELA E QUAL O ATRIBUTO
DataConsulta DATE,
HorarioConsulta TIME,

);

SELECT * FROM Paciente;
SELECT * FROM Medico;
SELECT * FROM Consulta;