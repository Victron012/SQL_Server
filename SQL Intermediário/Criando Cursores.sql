-- Criando um cursor
use AdventureWorks2012;

declare @FirstName varchar(50), @MiddleName varchar(50), @LastName varchar(50);

declare cur_NomeCompleto cursor
for select top 10
	Firstname,
	MiddleName,
	LastName
from
	Person.Person;

-- Abrindo o cursor

open cur_NomeCompleto;

-- Selecionar os dados

fetch next from cur_NomeCompleto
into @FirstName, @MiddleName, @LastName;

-- Iteração pelos dados retornados
while @@FETCH_STATUS = 0
begin
	fetch next from cur_NomeCompleto
	into @FirstName, @MiddleName, @LastName;
end
select @FirstName, @MiddleName, @LastName;

-- Fechando e desalocando o cursor

close cur_NomeCompleto;
deallocate cur_NomeCompleto;