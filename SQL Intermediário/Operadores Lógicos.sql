use AdventureWorks2012;

SELECT 
	BusinessEntityID,
	NationalIDNumber,
	LoginID,
	OrganizationNode,
	OrganizationLevel,
	JobTitle,
	DATEDIFF(year, BirthDate, GETDATE()) as Idade,
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
	HumanResources.Employee
where
	DATEDIFF(year, BirthDate, GETDATE()) > 40
and
	gender = 'F';

/* Operadores lógicos
	and
	or
	not
*/