DROP DATABASE dbLojaJailson;
/*Banco de dados*/
CREATE DATABASE dbLojaJailson;
/*Usar banco de dados*/
USE  dbLojaJailson;
/*Tabela de produtos*/
CREATE TABLE tb_Produtos(
	idProduto INT PRIMARY KEY IDENTITY(1,1),
	nomeProduto VARCHAR(50) NOT NULL, 
	precoProduto DECIMAL(6,2) NOT NULL
);

/*Tabela de Clientes*/
CREATE TABLE tb_Clientes(
	idCliente INT PRIMARY KEY IDENTITY(1,1),
	nomeCliente VARCHAR(50) NOT NULL,
	dataNascimento DATE,
	sexo char(1) NOT NULL,
	endereco VARCHAR(50),
	cidade VARCHAR(50),
	estado VARCHAR(30),
	telefone VARCHAR(15)
);

/*Tabela de Vendas*/
CREATE TABLE tb_Vendas(
	idVenda INT PRIMARY KEY IDENTITY(1,1),
	idCliente INT NOT NULL FOREIGN KEY REFERENCES tb_Clientes (idCliente),
	dataVenda DATETIME NOT NULL
);

/*Tabela de ProdutosVenda*/
CREATE TABLE tb_ProdutoVenda(
	idProdutoVenda INT PRIMARY KEY IDENTITY (1,1),
	idVenda INT FOREIGN KEY REFERENCES tb_Vendas (idVenda) NOT NULL,
	idProduto INT FOREIGN KEY REFERENCES tb_Produtos (idProduto) NOT NULL,
	qtProduto INT NOT NULL
);


-- CONSTRAINT - Regras

ALTER TABLE tb_Vendas
ADD CONSTRAINT FK_Produto_Vendas
FOREIGN KEY (idProduto)
REFERENCES tb_Produtos (idProduto)

drop table tb_Vendas