use dbLojaJailson;

select
	idProduto,
	nomeProduto,
	precoProduto,
	case
		when precoProduto > 4 then precoProduto *0.8 else precoProduto
	end as precoDesconto
from
	tb_Produtos


declare @desconto smallint;
set @desconto = 2; -- 1 = desconto, 2 = sem desonto

if @desconto = 1
	select
		idProduto,
		nomeProduto,
		precoProduto,
		case
			when precoProduto > 4 then precoProduto *0.8 else precoProduto
		end as precoDesconto
	from	
		tb_Produtos
else
	select
			idProduto,
			nomeProduto,
			precoProduto
		from	
			tb_Produtos