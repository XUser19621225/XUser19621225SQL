SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Get_Persons] 
AS
BEGIN
	SET NOCOUNT ON;

	SELECT a.id,a.family [Фамилия],b.xname [Город],c.cname [Страна] FROM Persons a 
	INNER JOIN Cities b ON a.id_city = b.id 
	INNER JOIN Countries c ON a.id_country = c.id
END
GO
