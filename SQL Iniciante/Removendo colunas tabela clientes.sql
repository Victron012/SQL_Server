USE dbLojaJailson;

BEGIN TRAN;

ALTER TABLE tb_Clientes
DROP COLUMN endereco;

ALTER TABLE tb_Clientes
DROP COLUMN cidade;

ALTER TABLE tb_Clientes
DROP COLUMN estado;

SELECT * FROM tb_Clientes;


ROLLBACK TRAN;
-- COMMIT TRAN;