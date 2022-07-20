USE dbLojaJailson;
/*
	INSERT INTO tb_Clientes VALUES ('José Penha','1977-05-07','M','Rua da Mecânica, 33','Campinas','São Paulo','11 91234-5678');
	INSERT INTO tb_Clientes VALUES ('Zequinha Muriçoca','1988-05-07','M','Rua Jambira, 13','Campinas','São Paulo','11 98765-4321');
	INSERT INTO tb_Clientes VALUES ('Mariazinha de Lá','1981-05-07','F','Rua Jambira, 13','Campinas','São Paulo','11 96969-6969');
*/

SELECT * FROM tb_Clientes

SELECT *
INTO tb_ClientesBackup
FROM tb_Clientes;