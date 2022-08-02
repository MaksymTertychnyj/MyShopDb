SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ProductWithMinPrice] AS
SELECT ProductName, SupplierName, CategoryName, Price 
FROM Products INNER JOIN Suppliers ON Products.SupplierId = Suppliers.SupplierId
			  INNER JOIN Categories ON Products.CategoryId = Categories.CategoryId
WHERE Price = (SELECT MIN(Price) FROM Products)
GO
