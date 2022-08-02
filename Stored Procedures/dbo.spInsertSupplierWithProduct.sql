SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[spInsertSupplierWithProduct] AS
BEGIN
BEGIN TRANSACTION;
INSERT INTO Suppliers (SupplierName, City, Country)
VALUES ('Norske Meierier', 'Lviv', 'Ukraine');

INSERT INTO Products (ProductName, SupplierId, CategoryId, Price)
VALUES
(
	'Green tea',
	(SELECT SupplierId FROM Suppliers WHERE SupplierName = 'Norske Meierier'),
	(SELECT CategoryId FROM Categories WHERE CategoryName = 'Beverages'),
	10
)
COMMIT;
END
GO
