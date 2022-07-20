USE dbLojaJailson;

BEGIN TRAN;
DROP TABLE tb_ClientesBackup;
ROLLBACK TRAN;
COMMIT TRAN;

CREATE TABLE tb_ClientesBkp(
	idClienteBkp INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	idCliente INT NOT NULL,
	nomeCliente VARCHAR(50) null,
	dataNascimento DATE null,
	sexo VARCHAR(1) null,
	idEndereco INT null,
	dataInclusao datetime
);

create trigger tr_Backup_Clientes
on tb_Clientes
for update
as
	insert into tb_ClientesBkp(idCliente, nomeCliente, dataNascimento, sexo, idEndereco, dataInclusao)
	select idCliente, nomeCliente, dataNascimento, sexo, idEndereco, getdate()
	from deleted;

select * from tb_Clientes;

update tb_Clientes set nomeCliente = 'Mariazinha de Cá' where idCliente = 4; 

select * from tb_ClientesBkp;