USE dbLojaJailson;

CREATE VIEW vw_Endereco_Completo_Clientes
AS
SELECT 
	tbc.idCliente,
	tbc.nomeCliente,
	tbc.dataNascimento,
	tbc.sexo,
	tbe.nomeRua,
	tbci.nomeCidade,
	tbes.nomeEstado
FROM
	tb_Clientes tbc
INNER JOIN
	tb_Enderecos tbe ON tbe.idEndereco = tbc.idEndereco
INNER JOIN
	tb_Cidades tbci ON tbci.idCidade = tbe.idCidade
INNER JOIN
	tb_Estados tbes ON tbes.idEstado = tbci.idCidade;

SELECT * FROM vw_Endereco_Completo_Clientes;
