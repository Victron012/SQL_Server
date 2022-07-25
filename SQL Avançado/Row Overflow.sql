-- Row Overflow
use SQLAvancado;

create table tbl_RowOverFlow(
	col1 varchar (8000),
	col2 varchar (8000)
);

insert into tbl_RowOverFlow values (replicate('x', 8000), REPLICATE('y', 8000));

select * from tbl_RowOverFlow;

dbcc ind (
	'SQLAvancado',
	'tbl_RowOverflow',
	1
);

dbcc traceon(3604)
dbcc page(
	'SQLAvancado',
	1,
	142,
	3
)

drop table tbl_RowOverFlow;

