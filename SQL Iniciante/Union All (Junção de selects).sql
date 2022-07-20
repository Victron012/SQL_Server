-- Jun��o de Select's

USE dbLojaJailson;

SELECT
	tbv.idVenda as 'N� Venda',
	tbc.nomeCliente as 'Nome',
	tbp.nomeProduto as 'Produto',
	tbpv.qtProduto as 'Quantidade',
	tbp.precoProduto as 'Pre�o',
	tbp.precoProduto*tbpv.qtProduto as 'Total'
FROM
	tb_Produtos tbp
INNER JOIN
	tb_ProdutoVenda tbpv on tbp.idProduto = tbpv.idProduto
INNER JOIN
	tb_Vendas tbv on tbpv.idVenda = tbv.idVenda
INNER JOIN
	tb_Clientes tbc on tbc.idCliente = tbv.idCliente
WHERE
	tbv.idVenda = 1

	UNION ALL

-- Group By
SELECT
	tbv.idVenda,
	tbc.nomeCliente,
	'',
	SUM(tbpv.qtProduto) as 'Quantidade',
	NULL,
	SUM(tbpv.qtProduto*tbp.precoProduto) as 'Pre�o'
FROM
	tb_Produtos tbp
INNER JOIN
	tb_ProdutoVenda tbpv on tbp.idProduto = tbpv.idProduto
INNER JOIN
	tb_Vendas tbv on tbpv.idVenda = tbv.idVenda
INNER JOIN
	tb_Clientes tbc on tbc.idCliente = tbv.idCliente
GROUP BY tbc.nomeCliente, tbv.idVenda;