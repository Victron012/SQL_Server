use SQLAvancado;

create table tbl_DadosPerdidos(
	inteiro int,
	tamanhoFixo char(10),
	colunaGrande char(500),
	numerinho tinyint
);

-- verificando o tamanho

select 
	c.column_id,
	c.name,
	ipc.leaf_offset as [Offset in Row],
	ipc.max_inrow_length as [Max Length],
	ipc.system_type_id as [Column Type]
from
	sys.system_internals_partition_columns ipc join sys.partitions p on ipc.partition_id = p.partition_id
	join sys.columns c on c.column_id = ipc.partition_column_id and c.object_id = p.object_id
where
	p.object_id = object_id(N'tbl_DadosPerdidos') order by c.column_id;

-- Aumento de tamanho
alter table tbl_DadosPerdidos
alter column numerinho bigint

insert into tbl_DadosPerdidos values (1, 2, '3', 4);

-- Drop de coluna
alter table tbl_DadosPerdidos
drop column colunaGrande;

dbcc ind (
	'SQLAvancado',
	'tbl_DadosPerdidos',
	1
);

dbcc traceon(3604)
dbcc page(
	'SQLAvancado',
	1,
	23680,
	3
);

-- O rebuild irá criar uma nova página com outra numeração
alter table tbl_DadosPerdidos rebuild;