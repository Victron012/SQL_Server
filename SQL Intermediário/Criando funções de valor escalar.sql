-- Criando Função
create function UDF_NomeCompletoIdade(@BusinessEntityId int)
returns varchar(250)
as
begin


return 
	(SELECT distinct
		tbp.FirstName + ' ' + tbp.MiddleName + ' ' + tbp.LastName + ', ' + cast(datediff(year, tbh.BirthDate, getdate()) as varchar(4)) + ' anos'
	FROM 
		Person.Person tbp
	inner join
		HumanResources.Employee tbh on tbp.BusinessEntityID = tbh.BusinessEntityID
	where
		tbp.BusinessEntityID = @BusinessEntityId)
end

