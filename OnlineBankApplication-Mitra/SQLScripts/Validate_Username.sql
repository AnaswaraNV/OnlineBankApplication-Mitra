CREATE PROCEDURE [dbo].[Validate_UserName]
	  @Username NVARCHAR(20)
AS
BEGIN
	DECLARE @ret INT
	SELECT @Username = Username FROM [Customers] WHERE Username = @Username 
	SELECT @Username

	IF @Username IS NOT NULL
		SELECT @ret=0
	ELSE
		SELECT @ret=-1
SELECT @ret		
END