-- Unir dimproduct com sub e category
create view vw_Product as
SELECT 
	DimProduct.ProductKey,
	DimProduct.ProductSubcategoryKey,
	DimProduct.EnglishProductName,
	DimProduct.SafetyStockLevel,
	ps.EnglishProductSubcategoryName,
	ps.ProductCategoryKey,
	pc.EnglishProductCategoryName

FROM AdventureWorksDW2019.dbo.DimProduct

LEFT JOIN AdventureWorksDW2019.dbo.DimProductSubcategory ps on DimProduct.ProductSubcategoryKey = ps.ProductSubcategoryKey
LEFT JOIN AdventureWorksDW2019.dbo.DimProductCategory pc on ps.ProductCategoryKey = pc.ProductCategoryKey
