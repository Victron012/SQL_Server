use dbLojaJailson;

select * from tb_Produtos;

-- Salvar os duplicados
select
	nomeProduto, precoProduto
into 
	#tmp_Backup
from 
	tb_Produtos
where
	nomeProduto in (
		select
			nomeProduto
		from
			tb_Produtos
		group by
			nomeProduto
		having
			count(*) >=2
	);

select * from #tmp_Backup;

-- Apagar os duplicados da base principal
begin tran;
select * from tb_ProdutoVenda

delete from tb_ProdutoVenda;

delete from 
	tb_Produtos 
where 
	nomeProduto in (select
			nomeProduto
		from
			tb_Produtos
		group by
			nomeProduto
		having
			count(*) >=2
	);
rollback tran;
-- commit tran;

-- Voltar os dados sem a duplicidade

select * from #tmp_Backup;

delete from #tmp_Backup where precoProduto = 25.0;

insert into tb_Produtos
select * from #tmp_Backup;
