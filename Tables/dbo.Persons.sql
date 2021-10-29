CREATE TABLE [dbo].[Persons]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[family] [varchar] (50) COLLATE Cyrillic_General_CI_AS NULL,
[id_city] [int] NULL,
[id_country] [int] NULL
) ON [PRIMARY]
GO
