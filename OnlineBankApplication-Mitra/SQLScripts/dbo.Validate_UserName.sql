CREATE PROCEDURE [dbo].[Validate_UserName]
	  @Username NVARCHAR(20)
AS
BEGIN
	IF 
	(SELECT COUNT(Username) FROM Customers WHERE Username = @Username) > 0
	BEGIN
		SELECT 0
	END
END