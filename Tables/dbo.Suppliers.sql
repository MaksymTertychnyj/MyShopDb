CREATE TABLE [dbo].[Suppliers]
(
[SupplierId] [int] NOT NULL IDENTITY(1, 1),
[SupplierName] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[City] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Country] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Suppliers] ADD CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED ([SupplierId]) ON [PRIMARY]
GO
