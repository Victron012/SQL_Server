use dbLojaJailson;

select 
	idProduto,
	nomeProduto,
	precoProduto,
	case
		when precoProduto <= 6 then precoProduto * 1.2
		when precoProduto > 6.0 then precoProduto * 0.8 else precoProduto
	end as PrecoComDesconto
from	
	tb_Produtos