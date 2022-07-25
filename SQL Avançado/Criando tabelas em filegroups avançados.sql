use SQLAvancado;

create table dbo.tblPrimary( -- filegroup não especificado, irá para o padrão
	coluna int
);

create table dbo.tblPaulo(
	coluna int
) on [PG];

create table dbo.tblJailson(
	coluna int
) on [JM];