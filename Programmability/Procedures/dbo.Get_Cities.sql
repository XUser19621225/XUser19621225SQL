SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_Cities]
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @s0 VARCHAR(100) = ''
    -- Insert statements for procedure here
	SELECT * FROM Cities
END
GO