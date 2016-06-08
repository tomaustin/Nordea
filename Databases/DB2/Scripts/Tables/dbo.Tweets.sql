CREATE TABLE [dbo].[Tweets]
(
[TweetID] [int] NOT NULL,
[TweetAuthor] [int] NOT NULL,
[Tweet] [nvarchar] (160) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tweets] ADD CONSTRAINT [PK_Tweets] PRIMARY KEY CLUSTERED  ([TweetID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Tweets] ADD CONSTRAINT [FK_Tweets_Tweets] FOREIGN KEY ([TweetID]) REFERENCES [dbo].[Tweets] ([TweetID])
GO
