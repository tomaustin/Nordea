SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
Create VIEW [dbo].[ContactTwitter]
--WITH ENCRYPTION, SCHEMABINDING, VIEW_METADATA
AS
   SELECT AuthorName,
          AuthorTwitter, LinkedIn, Email FROM dbo.Authors JOIN Nordea1_Dev.dbo.Contacts  ON AuthorName = ContactFullName 
-- WITH CHECK OPTION
GO
