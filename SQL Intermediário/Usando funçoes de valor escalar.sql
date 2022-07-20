use AdventureWorks2012;

SELECT 
	BusinessEntityID,
	AdventureWorks2012.dbo.UDF_NomeCompletoIdade(BusinessEntityID) as 'Nome Completo',
	NationalIDNumber,
	LoginID,
	OrganizationNode,
	OrganizationLevel,
	JobTitle,
	BirthDate,
	MaritalStatus,
	Gender,
	HireDate,
	SalariedFlag,
	VacationHours,
	SickLeaveHours,
	CurrentFlag,
	rowguid,
	ModifiedDate
FROM 
	HumanResources.Employee;