
/* Comparadores
	= igual
	<> diferente
	> maior
	>= maior ou igual
	< menor
	<= menor ou igual
*/

SELECT TOP (1000) [BusinessEntityID]
      ,[NationalIDNumber]
      ,[LoginID]
      ,[OrganizationNode]
      ,[OrganizationLevel]
      ,[JobTitle]
      ,[BirthDate]
      ,[MaritalStatus]
      ,[Gender]
      ,[HireDate]
      ,[SalariedFlag]
      ,[VacationHours]
      ,[SickLeaveHours]
      ,[CurrentFlag]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2012].[HumanResources].[Employee]
  where SickLeaveHours > 20 and SickLeaveHours <=40