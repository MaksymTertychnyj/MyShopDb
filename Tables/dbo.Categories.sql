CREATE TABLE [dbo].[Categories]
(
[CategoryId] [int] NOT NULL IDENTITY(1, 1),
[CategoryName] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Categories] ADD CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED ([CategoryId]) ON [PRIMARY]
GO
