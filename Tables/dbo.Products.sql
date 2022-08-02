CREATE TABLE [dbo].[Products]
(
[ProductId] [int] NOT NULL IDENTITY(1, 1),
[ProductName] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SupplierId] [int] NOT NULL,
[CategoryId] [int] NOT NULL,
[Price] [float] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Products] ADD CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([ProductId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Products] ADD CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Categories] ([CategoryId]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] ADD CONSTRAINT [FK_Products_Suppliers_SupplierId] FOREIGN KEY ([SupplierId]) REFERENCES [dbo].[Suppliers] ([SupplierId]) ON DELETE CASCADE
GO
