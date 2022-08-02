SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[ProductsCostFromUSA] AS
SELECT SUM(Price) AS Cost
FROM Products INNER JOIN Suppliers ON Products.SupplierId = Suppliers.SupplierId
WHERE Country LIKE 'USA'
GO
