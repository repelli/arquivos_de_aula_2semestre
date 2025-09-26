-- EXERCÍCIO 1

CREATE DATABASE cadastro_alunos;
USE cadastro_alunos;



CREATE TABLE alunos(
id_aluno INT PRIMARY KEY IDENTITY ,
nome NVARCHAR(100),
idade INT,
cidade NVARCHAR(100)
)

INSERT INTO alunos(nome,idade,cidade) VALUES
('Jose',22, 'São Jose do Rio Preto'),
('Maria',32, 'São Paulo'),
('Creison',18, 'São Tome das Letras'),
('Antonio ',45, 'São Leopoldo'),
('Aline',22, 'São Paulo')

SELECT * FROM alunos;

SELECT nome,idade FROM alunos
WHERE idade > 20;

SELECT * FROM alunos
WHERE cidade = 'São Paulo';

--EXERCÍCIO 2

CREATE DATABASE Loja_Games;
USE Loja_Games;

CREATE TABLE jogos(
id_jogo INT PRIMARY KEY IDENTITY,
titulo NVARCHAR(50),
genero NVARCHAR(20),
preco FLOAT(3)
)

INSERT INTO jogos(titulo,genero,preco) VALUES
('Final Fight', 'luta',1320.29),
('Street Fight','luta',1532.40),
('Pacman','acao', 324.24),
('Final Fantasy','RPG',1192.25),
('Tom Raider','aventura',480.22),
('Fifa 2025','desportos',890.22)

SELECT titulo FROM jogos
WHERE genero = 'açao';

SELECT titulo, preco FROM jogos
WHERE preco > = 200;

SELECT titulo, preco FROM jogos

--EXERCÍCIO 3

CREATE DATABASE biblioteca_Virtual;
USE biblioteca_virtual;



CREATE TABLE livros(
id_livro INT PRIMARY KEY IDENTITY,
titulo NVARCHAR(100),
autor NVARCHAR(100),
ano_publicacao INT
)

INSERT INTO livros(titulo,autor,ano_publicacao) VALUES
('Romanceiro da Incofidência','Cecilia Meireles',2016),
('O alienista','Machado de Assis', 1879),
('Dom Casmurro','Machado de Assis', 1889),
('A hora da estrela','Clarisse Lispector', 1879),
('O quinze','Raquel de Queiroz', 1945),
('Romanceiro da Incofidência','Cecilia Meireles', 1947)


SELECT * FROM livros
WHERE ano_publicacao > 2010;

SELECT * FROM livros
WHERE autor = 'Machado de Assis';

SELECT titulo FROM livros;


-- EXERCÍCIO 4


CREATE DATABASE cadastroFuncionario;
USE cadastroFuncionario;



CREATE TABLE cadastro_funcionarios(
id_func INT PRIMARY KEY IDENTITY,
nome NVARCHAR(50),
cargo NVARCHAR(20),
salario INT
)

INSERT INTO cadastro_funcionarios(nome,cargo,salario) 
VALUES
('Jose','contador', 7500),
('Maria', 'professora', 5300),
('Creison', 'comprador', 5900),
('Antonio ', 'auxiliar de limpeza', 1980),
('Aline', 'administrador', 6800)


SELECT nome, salario FROM cadastro_funcionarios
WHERE salario > 3000;

SELECT nome, cargo FROM cadastro_funcionarios
WHERE cargo like 'contador';

SELECT nome,cargo FROM cadastro_funcionarios;

--EXERCÍCIO 5

CREATE DATABASE pedidosSimples;
USE pedidosSimples;

CREATE TABLE pedidos (
id_pedido INT PRIMARY KEY IDENTITY,
cliente NVARCHAR(50),
produto NVARCHAR(30),
quantidade int
)

INSERT INTO pedidos(cliente, produto, quantidade)
VALUES
('Jose', 'martelo',1), 
('Maria', 'pá',2), 
('Antonio', 'picareta',4), 
('Andre', 'enxada',3), 
('Pedro', 'cimento',19), 
('Manule', 'argamassa',20)

SELECT * FROM pedidos
WHERE cliente = 'Jose';


SELECT * FROM pedidos
WHERE produto = 'cimento';

SELECT cliente, quantidade FROM pedidos;