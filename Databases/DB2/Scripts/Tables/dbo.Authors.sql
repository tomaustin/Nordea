CREATE TABLE [dbo].[Authors]
(
[AuthorID] [int] NOT NULL,
[AuthorName] [nvarchar] (50) COLLATE Latin1_General_CI_AS NOT NULL,
[AuthorTwitter] [nvarchar] (50) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Authors] ADD CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED  ([AuthorID]) ON [PRIMARY]
GO
