CREATE TABLE [dbo].[authors]
(
[au_id] [dbo].[id] NOT NULL,
[au_lname] [varchar] (40) COLLATE Cyrillic_General_CI_AS NOT NULL,
[au_fname] [varchar] (20) COLLATE Cyrillic_General_CI_AS NOT NULL,
[phone] [char] (12) COLLATE Cyrillic_General_CI_AS NOT NULL CONSTRAINT [DF__authors__phone__25869641] DEFAULT ('UNKNOWN'),
[address] [varchar] (40) COLLATE Cyrillic_General_CI_AS NULL,
[city] [varchar] (20) COLLATE Cyrillic_General_CI_AS NULL,
[state] [char] (2) COLLATE Cyrillic_General_CI_AS NULL,
[zip] [char] (5) COLLATE Cyrillic_General_CI_AS NULL,
[contract] [bit] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[authors] ADD CONSTRAINT [CK__authors__au_id__24927208] CHECK (([au_id] like '[0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[authors] ADD CONSTRAINT [CK__authors__zip__267ABA7A] CHECK (([zip] like '[0-9][0-9][0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[authors] ADD CONSTRAINT [UPKCL_auidind] PRIMARY KEY CLUSTERED ([au_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [aunmind] ON [dbo].[authors] ([au_lname], [au_fname]) ON [PRIMARY]
GO
