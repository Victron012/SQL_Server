-- Migração tabela Endereços
USE dbLojaJailson;

BEGIN TRAN;

INSERT INTO tb_Enderecos(nomeRua, idCidade)
SELECT
	tbc.endereco,
	tbci.idCidade
FROM tb_Clientes tbc
INNER JOIN tb_Cidades tbci ON tbc.cidade = tbci.nomeCidade;

-- SELECT * FROM tb_Enderecos;

ROLLBACK TRAN;
-- COMMIT TRAN;

SELECT 
	tbend.nomeRua,
	tbc.nomeCidade,
	tbe.nomeEstado
FROM
	tb_Enderecos tbend
INNER JOIN
	tb_Cidades tbc ON tbc.idCidade = tbend.idCidade
INNER JOIN 
	tb_Estados tbe ON tbe.idEstado = tbc.idEstado;