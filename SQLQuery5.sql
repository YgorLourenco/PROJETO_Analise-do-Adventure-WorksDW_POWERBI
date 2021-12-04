-- Customer
create view vw_Customer as 
SELECT 
	DimCustomer.CustomerKey,
	DimCustomer.GeographyKey,
	CONCAT(FirstName + ' ', MiddleName + ' ', LastName) as FullName,
	DimCustomer.BirthDate,
	DimCustomer.MaritalStatus,
	DimCustomer.Gender,
	DimCustomer.TotalChildren,
	DimCustomer.EnglishEducation,
	DimCustomer.EnglishOccupation,
	DimCustomer.DateFirstPurchase
FROM AdventureWorksDW2019.dbo.DimCustomer

LEFT JOIN AdventureWorksDW2019.dbo.DimGeography dg on DimCustomer.GeographyKey = dg.GeographyKey

SELECT * FROM vw_Customer