use SQLAvancado;

create table dbo.tblPrimary( -- filegroup n�o especificado, ir� para o padr�o
	coluna int
);

create table dbo.tblPaulo(
	coluna int
) on [PG];

create table dbo.tblJailson(
	coluna int
) on [JM];