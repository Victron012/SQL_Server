USE dbLojaJailson;

SELECT * FROM tb_Clientes;

BEGIN TRAN;

ALTER TABLE tb_Clientes
ADD idEndereco INT NULL;

SELECT * FROM tb_Clientes;

ALTER TABLE tb_Clientes
ADD CONSTRAINT FK_Clientes_Enderecos
FOREIGN KEY (idEndereco)
REFERENCES tb_Enderecos (idEndereco);

ROLLBACK TRAN;
-- COMMIT TRAN;
