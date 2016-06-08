SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[prcGetRSSFeeds]
AS
    SELECT  RSSFeedID,
            FeedName,
            Checked
    FROM    dbo.RSSFeeds

	-- v5
GO
