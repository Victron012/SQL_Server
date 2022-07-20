 -- Insert's
 
 USE dbLojaJailson;
 -- Tabela de produtos 

 INSERT INTO tb_Produtos VALUES ('Suco de Laranja', 4.5);
 INSERT INTO tb_Produtos VALUES ('Suco de Tamarindo', 25.0);
 INSERT INTO tb_Produtos(nomeProduto, precoProduto) VALUES ('Suco de Manga', 1.5);
 SELECT * FROM tb_Produtos;
 
 -- Tabela de Clientes
 INSERT INTO tb_Clientes VALUES ('Paulo Guina', '1980-05-01', 'M', 'Rua da Mecânica 400', 'Campinas', 'São Paulo', '11 9 1234-5678');
 SELECT * FROM tb_Clientes;

 -- Tabela de Vendas
 INSERT INTO tb_Vendas VALUES (1, GETDATE());
 SELECT * FROM tb_Vendas;

 -- Tabela de ProdutoVendas
INSERT INTO tb_ProdutoVenda VALUES(1, 1, 3);
INSERT INTO tb_ProdutoVenda VALUES(1, 2, 1);
INSERT INTO tb_ProdutoVenda VALUES(1, 3, 4);
SELECT * FROM tb_ProdutoVenda;  