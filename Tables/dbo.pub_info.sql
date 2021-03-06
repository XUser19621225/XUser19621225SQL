CREATE TABLE [dbo].[pub_info]
(
[pub_id] [char] (4) COLLATE Cyrillic_General_CI_AS NOT NULL,
[logo] [image] NULL,
[pr_info] [text] COLLATE Cyrillic_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[pub_info] ADD CONSTRAINT [UPKCL_pubinfo] PRIMARY KEY CLUSTERED ([pub_id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[pub_info] ADD CONSTRAINT [FK__pub_info__pub_id__440B1D61] FOREIGN KEY ([pub_id]) REFERENCES [dbo].[publishers] ([pub_id])
GO
