use AdventureWorks2012;

set statistics time on;

select 
	BusinessEntityID,
	AccountNumber,
	Name,
	CreditRating,
	PreferredVendorStatus,
	ActiveFlag,
	PurchasingWebServiceURL,
	ModifiedDate
into
	#tmpDados
from
	Purchasing.Vendor

select 
	BusinessEntityID,
	AccountNumber,
	Name,
	CreditRating,
	PreferredVendorStatus,
	ActiveFlag,
	PurchasingWebServiceURL,
	ModifiedDate
from
	#tmpDados