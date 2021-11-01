CREATE TABLE [dbo].[titles]
(
[title_id] [dbo].[tid] NOT NULL,
[title] [varchar] (80) COLLATE Cyrillic_General_CI_AS NOT NULL,
[type] [char] (12) COLLATE Cyrillic_General_CI_AS NOT NULL CONSTRAINT [DF__titles__type__2D27B809] DEFAULT ('UNDECIDED'),
[pub_id] [char] (4) COLLATE Cyrillic_General_CI_AS NULL,
[price] [money] NULL,
[advance] [money] NULL,
[royalty] [int] NULL,
[ytd_sales] [int] NULL,
[notes] [varchar] (200) COLLATE Cyrillic_General_CI_AS NULL,
[pubdate] [datetime] NOT NULL CONSTRAINT [DF__titles__pubdate__2F10007B] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[titles] ADD CONSTRAINT [UPKCL_titleidind] PRIMARY KEY CLUSTERED ([title_id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [titleind] ON [dbo].[titles] ([title]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[titles] ADD CONSTRAINT [FK__titles__pub_id__2E1BDC42] FOREIGN KEY ([pub_id]) REFERENCES [dbo].[publishers] ([pub_id])
GO
