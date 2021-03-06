CREATE TABLE [dbo].[stores]
(
[stor_id] [char] (4) COLLATE Cyrillic_General_CI_AS NOT NULL,
[stor_name] [varchar] (40) COLLATE Cyrillic_General_CI_AS NULL,
[stor_address] [varchar] (40) COLLATE Cyrillic_General_CI_AS NULL,
[city] [varchar] (20) COLLATE Cyrillic_General_CI_AS NULL,
[state] [char] (2) COLLATE Cyrillic_General_CI_AS NULL,
[zip] [char] (5) COLLATE Cyrillic_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[stores] ADD CONSTRAINT [UPK_storeid] PRIMARY KEY CLUSTERED ([stor_id]) ON [PRIMARY]
GO
