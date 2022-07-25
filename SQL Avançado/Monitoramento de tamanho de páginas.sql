-- Monitoramento do tamanho de páginas
use SQLAvancado;

create table tbl_PFS (
	coluna int -- int = 4 bytes
)

insert into tbl_PFS values (1)

dbcc ind (
	'SQLAvancado',
	'tbl_PFS',
	1
);

dbcc traceon(3604)
dbcc page(
	'SQLAvancado',
	1,
	7256,
	3
)