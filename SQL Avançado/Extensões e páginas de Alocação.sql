-- Extensões e páginas de alocação

use SQLAvancado;

create table tbl_Teste(
	col1 char(5000)
);

insert into tbl_Teste values (replicate('x', 5000));


dbcc ind (
	'SQLAvancado',
	'tbl_Teste',
	1
);

dbcc traceon(3604)
dbcc page (
	'SQLAvancado',
	1,
	8096,
	3
);

select * from sys.dm_db_database_page_allocations(db_id(), object_id('tbl_Teste'), null, null, 'detailed')