CREATE TABLE [dbo].[Errors]
(
[ErrorNumber] [int] NOT NULL,
[ErrorText] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Errors] ADD CONSTRAINT [PK_Errors] PRIMARY KEY CLUSTERED  ([ErrorNumber]) ON [PRIMARY]
GO
