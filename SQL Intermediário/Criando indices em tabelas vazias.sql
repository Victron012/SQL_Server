-- Criando indices em tabelas vazias

create table tb_TesteIndices(
	col1 int,
	col2 int
);

-- Indice não clusterizado
create nonclustered index idx1_ on tb_TesteIndices(col1);

-- Indice clusterizado
create clustered index idx2_ on tb_TesteIndices(col2);

declare @i int;
set @i = 0;

while @i < 1000
begin
	insert into tb_TesteIndices (col1, col2) values (ROUND(rand()*1000,0), round(rand()*1000,0))
	set @i = @i + 1
end

select * from tb_TesteIndices;

delete from tb_TesteIndices;