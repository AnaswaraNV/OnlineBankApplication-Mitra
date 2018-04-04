DECLARE @salt UNIQUEIDENTIFIER
SET @Salt = NEWID()  
	 DECLARE @CreateDate DATETIME =  GETDATE()
INSERT INTO dbo.[Customers] (Username, FirstName, LastName, PasswordHash, CustomerStatus, SecurityQuestion , SecurityAnswer , CreateDate, Salt)
		VALUES(N'tevij', N'boss', N'sadg', HASHBYTES('SHA2_512', N'abcdef'+CAST(@salt AS NVARCHAR(36))),0, N'sadhas' , N'meanu', @CreateDate, @Salt)

	--Correct login and password
