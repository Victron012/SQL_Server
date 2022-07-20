-- Migração das Cidades
USE dbLojaJailson;
BEGIN TRAN;

CREATE TABLE #tmp_Cidades(
	idCidade INT IDENTITY(1,1),
	nomeCidade VARCHAR(50),
	nomeEstado VARCHAR(30),
	idEstado INT,
);

-- Inserir dados na tabela temporária
INSERT INTO #tmp_Cidades(nomeCidade, nomeEstado)
SELECT DISTINCT cidade, estado FROM tb_Clientes ORDER BY cidade;

-- SELECT * FROM #tmp_Cidades;

-- Update do código do estado

-- Update mais fácil
UPDATE tmpC
SET tmpC.idEstado = tbe.idEstado
FROM #tmp_Cidades tmpC 
INNER JOIN tb_Estados tbe ON tmpC.nomeEstado = tbe.nomeEstado;

-- SELECT * FROM #tmp_Cidades;

-- Update com JOIN (Mais complicado)
UPDATE tmpC 
SET tmpC.idEstado = tbe.idEstado
FROM #tmp_Cidades tmpC
INNER JOIN tb_Clientes tbc ON tmpC.nomeCidade = tbc.cidade
INNER JOIN tb_Estados tbe ON tbc.estado = tbe.nomeEstado;

-- SELECT * FROM #tmp_Cidades;

-- Inserir os dados na tablea de Cidades

SET IDENTITY_INSERT tb_Cidades ON;

INSERT INTO tb_Cidades (idCidade, nomeCidade, idEstado)
SELECT tmpC.idCidade, tmpC.nomeCidade, tmpC.idEstado
FROM #tmp_Cidades tmpC;

-- SELECT * FROM tb_Cidades;

SET IDENTITY_INSERT tb_Cidades OFF;

DROP TABLE #tmp_Cidades;

ROLLBACK TRAN;
-- COMMIT TRAN;