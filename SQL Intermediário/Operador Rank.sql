use dbLojaJailson;


select
	nomeProduto,
	precoProduto,
	Posicao
from(
	select 
		nomeProduto,
		precoProduto,
		rank() over(order by precoProduto desc) as Posicao
	from tb_Produtos
) Dados
where Posicao <=5;