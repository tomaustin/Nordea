SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--SET QUOTED_IDENTIFIER ON|OFF
--SET ANSI_NULLS ON|OFF
--GO
CREATE PROCEDURE [dbo].[NewSproc]
    @parameter_name AS INT
-- WITH ENCRYPTION, RECOMPILE, EXECUTE AS CALLER|SELF|OWNER| 'user_name'
AS
    SELECT 'Im a new sproc'
GO
