 
CREATE PROCEDURE dbo.uspAddCustomer
	@pUsername NVARCHAR(50), 
	@pPassword NVARCHAR(50),
	@pFirstName NVARCHAR(40) = NULL, 
	@pLastName NVARCHAR(40) = NULL,
	@responseMessage NVARCHAR(250) OUTPUT
AS
BEGIN
	SET NOCOUNT ON

	DECLARE @salt UNIQUEIDENTIFIER=NEWID()
	DECLARE @UserId UNIQUEIDENTIFIER
	BEGIN TRY

		INSERT INTO dbo.[Customer] (FirstName, PasswordHash, Salt, FirstName, LastName)
		VALUES(@pUsername, HASHBYTES('SHA2_512', @pPassword+CAST(@salt AS NVARCHAR(36))), @salt, @pFirstName, @pLastName)

	   SET @responseMessage='Success'

	END TRY
	BEGIN CATCH
		SET @responseMessage=ERROR_MESSAGE() 
	END CATCH

END