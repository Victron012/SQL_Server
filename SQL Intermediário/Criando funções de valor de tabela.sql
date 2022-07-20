/*
	Autor: Victor Alvarez
	Data 14/07/2022
	Base: AdventureWorks2012
	Pasta:

	Função que retorna os dados completos do funcionário;
*/
create function UDF_DadosCompletosFuncionarios()
returns @Retorno table(
		NomeCompleto varchar(70),
		Idade int,
		Nascimento date,
		sexo varchar(1),
		AnosCasa int,
		Cargo varchar(20)
	)
as
begin

	insert into @Retorno
	select 
		tbp.FirstName + ' ' + isnull(tbp.MiddleName,'') + ' ' + tbp.LastName as 'Nome',
		datediff(year, tbe.BirthDate, getdate()) as Idade,
		tbe.BirthDate as Nascimento,
		tbe.Gender as Sexo,
		datediff(year, tbe.HireDate, getdate()) as AnosCasa,
		tbe.JobTitle as Cargo
	from
		Person.Person tbp
	inner join
		HumanResources.Employee tbe on tbp.BusinessEntityID = tbe.BusinessEntityID
	return
end