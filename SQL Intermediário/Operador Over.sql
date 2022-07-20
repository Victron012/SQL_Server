use dbLojaJailson;

select 
	nomeProduto,
	precoProduto,
	avg(precoProduto) over() as Media, 
	stdev(precoProduto) over() as DesvioPadrao
from
	tb_Produtos;
