USE dbLojaJailson;

BEGIN TRAN;

UPDATE tbc SET
tbc.idEndereco = tbe.idEndereco
FROM tb_Enderecos tbe
INNER JOIN tb_Clientes tbc ON tbe.nomeRua = tbc.endereco;

SELECT * FROM tb_Clientes

COMMIT TRAN;