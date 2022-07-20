use dbLojaJailson;

-- M�dia
select avg(precoProduto) from tb_Produtos;

-- Desvio padr�o

select STDEV(precoProduto) from tb_Produtos;

-- Z Score

select nomeProduto, (precoProduto - Calc.Media) / Calc.DesvioPadrao as 'Z Score'
from tb_Produtos,
(
	select
		avg(precoProduto) as Media,
		stdev(precoProduto) as DesvioPadrao
	from tb_Produtos
) Calc