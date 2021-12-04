-- Promotion
create view vw_Promotion as
SELECT 
	DimPromotion.PromotionKey,
	DimPromotion.EnglishPromotionName,
	DimPromotion.DiscountPct,
	DimPromotion.EnglishPromotionType,
	DimPromotion.EnglishPromotionCategory,
	DimPromotion.StartDate,
	DimPromotion.EndDate,
	DimPromotion.MinQty,
	DimPromotion.MaxQty
FROM AdventureWorksDW2019.dbo.DimPromotion

SELECT * FROM vw_Promotion