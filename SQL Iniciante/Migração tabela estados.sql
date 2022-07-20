-- migração de dados
USE dbLojaJailson;

-- Iniciar a transação
BEGIN TRAN
CREATE TABLE #tmp_Estados(
	idEstado INT IDENTITY(1,1),
	nomeEstado VARCHAR(30),
	sigla VARCHAR(2)
);

INSERT INTO #tmp_Estados (nomeEstado)
SELECT DISTINCT estado FROM tb_Clientes ORDER BY estado;

-- SELECT * FROM #tmp_Estados;

UPDATE #tmp_Estados SET sigla = 'SP' WHERE nomeEstado = 'São Paulo';


SET IDENTITY_INSERT tb_Estados ON; --Insere na coluna de identity

-- Inserindo na tabela de Estados 
INSERT INTO tb_Estados (idEstado, nomeEstado, sigla)
SELECT idEstado, nomeEstado, sigla 
FROM #tmp_Estados

-- SELECT * FROM #tmp_Estados;
-- SELECT * FROM tb_Estados;

DROP TABLE #tmp_Estados;

SET IDENTITY_INSERT tb_Estados OFF;

ROLLBACK TRAN;

-- COMMIT TRAN;
