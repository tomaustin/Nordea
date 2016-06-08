CREATE TABLE [dbo].[Blogs]
(
[BlogsID] [int] NOT NULL IDENTITY(1, 1),
[AuthorID] [int] NULL,
[Title] [char] (142) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Article] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PublishDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Blogs] ADD CONSTRAINT [PK__Blogs__C03C1E467AEB09A9] PRIMARY KEY CLUSTERED  ([BlogsID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Blogs] ADD CONSTRAINT [FK_BlogAuthor] FOREIGN KEY ([AuthorID]) REFERENCES [dbo].[Contacts] ([ContactsID])
GO
DENY REFERENCES ON  [dbo].[Blogs] TO [public]
GO
GRANT SELECT ON  [dbo].[Blogs] TO [public]
GO
DENY INSERT ON  [dbo].[Blogs] TO [public]
GO
DENY DELETE ON  [dbo].[Blogs] TO [public]
GO
DENY UPDATE ON  [dbo].[Blogs] TO [public]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Blog posts made by Simple Talk members', 'SCHEMA', N'dbo', 'TABLE', N'Blogs', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', N'The body text for the Blog', 'SCHEMA', N'dbo', 'TABLE', N'Blogs', 'COLUMN', N'Article'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Authors link back to the Contacts table', 'SCHEMA', N'dbo', 'TABLE', N'Blogs', 'COLUMN', N'AuthorID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date the Blog was published', 'SCHEMA', N'dbo', 'TABLE', N'Blogs', 'COLUMN', N'PublishDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Title of a Blog', 'SCHEMA', N'dbo', 'TABLE', N'Blogs', 'COLUMN', N'Title'
GO
