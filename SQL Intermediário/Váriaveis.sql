use dbLojaJailson;

-- Váriaveis

declare @maiorPreco decimal(6,2);

set @maiorPreco = 6.5;

select @maiorPreco;

set @maiorPreco = (select max(precoProduto) from tb_Produtos);

select @maiorPreco;
