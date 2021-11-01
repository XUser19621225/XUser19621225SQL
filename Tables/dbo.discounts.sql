CREATE TABLE [dbo].[discounts]
(
[discounttype] [varchar] (40) COLLATE Cyrillic_General_CI_AS NOT NULL,
[stor_id] [char] (4) COLLATE Cyrillic_General_CI_AS NULL,
[lowqty] [smallint] NULL,
[highqty] [smallint] NULL,
[discount] [decimal] (4, 2) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[discounts] ADD CONSTRAINT [FK__discounts__stor___3C69FB99] FOREIGN KEY ([stor_id]) REFERENCES [dbo].[stores] ([stor_id])
GO
