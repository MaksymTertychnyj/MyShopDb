SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[SuppliersThatSupplyCondiments] AS
SELECT DISTINCT SupplierName 
FROM Suppliers 
	INNER JOIN Products ON Products.SupplierId = Suppliers.SupplierId
	INNER JOIN Categories ON Products.CategoryId = Categories.CategoryId
WHERE CategoryName LIKE 'Condiments'
GO
