CREATE TABLE [dbo].[jobs]
(
[job_id] [smallint] NOT NULL IDENTITY(1, 1),
[job_desc] [varchar] (50) COLLATE Cyrillic_General_CI_AS NOT NULL CONSTRAINT [DF__jobs__job_desc__3F466844] DEFAULT ('New Position - title not formalized yet'),
[min_lvl] [tinyint] NOT NULL,
[max_lvl] [tinyint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[jobs] ADD CONSTRAINT [CK__jobs__max_lvl__412EB0B6] CHECK (([max_lvl]<=(250)))
GO
ALTER TABLE [dbo].[jobs] ADD CONSTRAINT [CK__jobs__min_lvl__403A8C7D] CHECK (([min_lvl]>=(10)))
GO
ALTER TABLE [dbo].[jobs] ADD CONSTRAINT [PK__jobs__6E32B6A58A5C977B] PRIMARY KEY CLUSTERED ([job_id]) ON [PRIMARY]
GO
