-- criar view factInternetSales
create view vw_factInternetSales as
SELECT 
	FactInternetSales.ProductKey,
	FactInternetSales.CustomerKey,
	FactInternetSales.PromotionKey,
	FactInternetSales.SalesTerritoryKey,
	FactInternetSales.SalesOrderNumber,
	FactInternetSales.OrderQuantity,
	FactInternetSales.UnitPrice,
	FactInternetSales.DiscountAmount,
	FactInternetSales.ProductStandardCost,
	FactInternetSales.TaxAmt,
	FactInternetSales.Freight,
	FactInternetSales.OrderDate,
	FactInternetSales.DueDate,
	FactInternetSales.ShipDate,
	dg.City,
	dg.EnglishCountryRegionName,
	dg.StateProvinceName

FROM AdventureWorksDW2019.dbo.FactInternetSales
LEFT JOIN AdventureWorksDW2019.dbo.DimGeography dg on FactInternetSales.SalesTerritoryKey = dg.SalesTerritoryKey
