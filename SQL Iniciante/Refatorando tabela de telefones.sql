USE dbLojaJailson;

CREATE TABLE tb_TelefoneCliente(
	idTelefone INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	idCliente INT NOT NULL,
	telefone VARCHAR(15) NOT NULL,
	ativo VARCHAR(1) NOT NULL DEFAULT 'S'
);

ALTER TABLE tb_TelefoneCliente
ADD CONSTRAINT FK_TelefoneCliente_Cliente
FOREIGN KEY (idCliente)
REFERENCES tb_Clientes (idCliente);

BEGIN TRAN;

INSERT INTO tb_TelefoneCliente(idCliente, telefone)
SELECT idCliente, telefone FROM tb_Clientes;

SELECT idCliente, telefone FROM tb_TelefoneCliente;
SELECT idCliente, telefone FROM tb_Clientes;

ROLLBACK TRAN;
-- COMMIT TRAN;

begin tran;

select * from tb_Clientes;

alter table tb_clientes
drop column telefone;

select * from tb_Clientes;

rollback tran;
--commit tran;
