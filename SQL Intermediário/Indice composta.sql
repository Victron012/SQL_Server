use dbEstudos;

create index idx_1 on tb_TesteIndices(col1) include (col2);

select * from tb_TesteIndices where col2 = 50;

create clustered index idx_2 on tb_TesteIndices(col1 asc, col2 asc);