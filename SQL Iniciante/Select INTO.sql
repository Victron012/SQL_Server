USE dbLojaJailson;
/*
	INSERT INTO tb_Clientes VALUES ('Jos� Penha','1977-05-07','M','Rua da Mec�nica, 33','Campinas','S�o Paulo','11 91234-5678');
	INSERT INTO tb_Clientes VALUES ('Zequinha Muri�oca','1988-05-07','M','Rua Jambira, 13','Campinas','S�o Paulo','11 98765-4321');
	INSERT INTO tb_Clientes VALUES ('Mariazinha de L�','1981-05-07','F','Rua Jambira, 13','Campinas','S�o Paulo','11 96969-6969');
*/

SELECT * FROM tb_Clientes

SELECT *
INTO tb_ClientesBackup
FROM tb_Clientes;