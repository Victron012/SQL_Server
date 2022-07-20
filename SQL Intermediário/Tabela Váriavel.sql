

declare @tabela table(
	idProduto int primary key,
	nomeProduto varchar(50)
);


insert into @tabela values(1, 'Churros');

select * from @tabela