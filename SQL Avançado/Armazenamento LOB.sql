-- Armazenamento LOB
use SQLAvancado;

create table tbl_tableLOB(
	id int,
	texto varchar(max)
);

insert into tbl_tableLOB values (1, replicate(convert(varchar(max), 'A'), 16000));

dbcc ind (
	'SQLAvancado',
	'tbl_TableLOB',
	1
)

dbcc traceon(3604)
dbcc page (
	'SQLAvancado',
	1,
	144,
	3
)