use dbLojaJailson;

-- Tabelas temporarias

create table #tmp_Dados( -- # no comeco do nome
	nome varchar(50),
	idade int
);

insert into #tmp_Dados (nome, idade) values('Jailson', 25);

select * from #tmp_Dados;

drop table #tmp_Dados;
------------------------------------------------------------------------------------------------------
select * into #tmp_Cidades from tb_Cidades;

select * from #tmp_Cidades;

update #tmp_Cidades set nomeCidade = nomeCidade + ' - Brasil';

select * from #tmp_Cidades;

drop table #tmp_Cidades;
