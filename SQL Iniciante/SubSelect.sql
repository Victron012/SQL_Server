-- Junção de Select's

USE dbLojaJailson;

SELECT
	tbv.idVenda as 'Nº Venda',
	tbc.nomeCliente as 'Nome',
	tbp.nomeProduto as 'Produto',
	tbpv.qtProduto as 'Quantidade',
	tbp.precoProduto as 'Preço',
	tbp.precoProduto*tbpv.qtProduto as 'Total',
	Total_Vendas.precoCompra as 'Valor Final'
FROM
	tb_Produtos tbp
INNER JOIN
	tb_ProdutoVenda tbpv on tbp.idProduto = tbpv.idProduto
INNER JOIN
	tb_Vendas tbv on tbpv.idVenda = tbv.idVenda
INNER JOIN
	tb_Clientes tbc on tbc.idCliente = tbv.idCliente
INNER JOIN(
	SELECT
		tbv.idVenda,
		SUM(tbpv.qtProduto*tbp.precoProduto) as 'precoCompra'
	FROM
		tb_Produtos tbp
	INNER JOIN
		tb_ProdutoVenda tbpv on tbp.idProduto = tbpv.idProduto
	INNER JOIN
		tb_Vendas tbv on tbpv.idVenda = tbv.idVenda
	GROUP BY tbv.idVenda
) Total_Vendas ON tbv.idVenda = Total_Vendas.idVenda;