CREATE TABLE [dbo].[publishers]
(
[pub_id] [char] (4) COLLATE Cyrillic_General_CI_AS NOT NULL,
[pub_name] [varchar] (40) COLLATE Cyrillic_General_CI_AS NULL,
[city] [varchar] (20) COLLATE Cyrillic_General_CI_AS NULL,
[state] [char] (2) COLLATE Cyrillic_General_CI_AS NULL,
[country] [varchar] (30) COLLATE Cyrillic_General_CI_AS NULL CONSTRAINT [DF__publisher__count__2A4B4B5E] DEFAULT ('USA')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[publishers] ADD CONSTRAINT [CK__publisher__pub_i__29572725] CHECK (([pub_id]='1756' OR [pub_id]='1622' OR [pub_id]='0877' OR [pub_id]='0736' OR [pub_id]='1389' OR [pub_id] like '99[0-9][0-9]'))
GO
ALTER TABLE [dbo].[publishers] ADD CONSTRAINT [UPKCL_pubind] PRIMARY KEY CLUSTERED ([pub_id]) ON [PRIMARY]
GO
