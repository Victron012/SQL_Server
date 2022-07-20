-- Forçar o SQL a usar determinado indice

select
	PersonID
from
	Person.BusinessEntityContact with(index(IX_BusinessEntityContact_PersonID));