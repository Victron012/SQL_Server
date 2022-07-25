use SQLAvancado;

create table tbl_ExemploAlteracao (
	InteiroNaoNull int not null,
	InteiroNull int null,
	BigInteiro bigint,
	Caractere char(10),
	InteiroPequeno tinyint
);

-- primeiro caso
insert into tbl_ExemploAlteracao values (1,1, 50, 'Churros', 1);

alter table tbl_ExemploAlteracao
alter column InteiroNaoNull int null;

-- Segundo caso
 delete from tbl_ExemploAlteracao;

 insert into tbl_ExemploAlteracao values (1, null, 50, 'Churros', 1);

 alter table tbl_ExemploAlteracao
 alter column InteiroNull int not null;

 update tbl_ExemploAlteracao set InteiroNull = 0 where InteiroNull is NULL;

 -- Terceiro caso

delete from tbl_ExemploAlteracao;

insert into tbl_ExemploAlteracao values (1, 1, 40, '1', 1);

alter table tbl_ExemploAlteracao
alter column Caractere INT;

insert into tbl_ExemploAlteracao values (1,1,9223372036854775000, '1' ,1);

alter table tbl_ExemploAlteracao 
alter column BigInteiro int;