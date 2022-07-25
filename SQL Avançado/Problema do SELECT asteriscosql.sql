-- O problema do select *

use SQLAvancado;

set statistics time on;

create table Employees(
	EmployeeId int not null,
	Name varchar(128) not null,
	Picture varbinary(max) not null
);

;with N1 (C) as 
(select 0 union all select 0) -- 2 rows
,N2(C) as (select 0 from N1 as T1 cross join N1 as T2) -- 4 rows
,N3(C) as (select 0 from N2 as T1 cross join N2 as T2) -- 16 rows
,N4(C) as (select 0 from N3 as T1 cross join N3 as T2) -- 256 rows
,N5(C) as (select 0 from N4 as T1 cross join N2 as T2) -- 1024 rows
,IDs(ID) as (select row_number() over (order by (select null)) from N5)

insert into Employees (EmployeeId, Name, Picture)
select
	ID, 'Employee' + convert(varchar(5), ID),
	convert(varbinary(max), replicate(convert(varchar(max), 'a'),120000))
from
	IDs;

select EmployeeId, Name from Employees;

select * from Employees;
