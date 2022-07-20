-- Stored Procedures
CREATE PROCEDURE sp_TotalVendaCliente(@idCliente INT)
AS
SELECT
	tbv.idVenda as 'N� Venda',
	tbc.nomeCliente as 'Nome',
	tbp.nomeProduto as 'Produto',
	tbpv.qtProduto as 'Quantidade',
	tbp.precoProduto as 'Pre�o',
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
) Total_Vendas ON tbv.idVenda = Total_Vendas.idVenda
WHERE
	tbv.idCliente = @idCliente;

--	sp_TotalVendaCliente 1