CREATE TABLE [dbo].[authors] (
  [au_id] [dbo].[id] NOT NULL,
  [au_lname] [varchar](40) NOT NULL,
  [au_fname] [varchar](20) NOT NULL,
  [phone] [char](12) NOT NULL CONSTRAINT [DF__authors__phone__25869641] DEFAULT ('UNKNOWN'),
  [address] [varchar](40) NULL,
  [city] [varchar](20) NULL,
  [state] [char](2) NULL,
  [zip] [char](5) NULL,
  [contract] [bit] NOT NULL,
  [comment] [varchar](100) NULL,
  CONSTRAINT [UPKCL_auidind] PRIMARY KEY CLUSTERED ([au_id]),
  CONSTRAINT [CK__authors__au_id__24927208] CHECK ([au_id] like '[0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9][0-9][0-9]'),
  CONSTRAINT [CK__authors__zip__267ABA7A] CHECK ([zip] like '[0-9][0-9][0-9][0-9][0-9]')
)
ON [PRIMARY]
GO

CREATE INDEX [aunmind]
  ON [dbo].[authors] ([au_lname], [au_fname])
  ON [PRIMARY]
GO