-- DEVELOPER: ANASWARA
-- DESCRIPTION: T-SQL SCRIPT WHICH CREATES THE FOLLOWING OBJECTS:
-- DATABASE
-- TABLE

-- TO DELETE A DB, YOU NEED TO BE ON ANOTHER DB
PRINT 'USING MASTER DB...'
USE MASTER;
GO

-- DELETE THE MITRADB DATABASE IF IT EXISTS  
PRINT 'CHECKING IF MITRADBDB EXISTS...'
IF EXISTS(SELECT * FROM SYS.DATABASES WHERE NAME='MITRADBDB')
	-- DELETE DATABASE ANADERIDB
BEGIN
	PRINT 'MITRADBDB EXISTS AND WILL BE DELETED...'
	DROP DATABASE MITRADBDB;
END;

-- CREATE A NEW DATABASE TEMPDEVDB
BEGIN
	PRINT 'MITRADBDB DOES NOT EXISTS AND WILL BE CREATED...'
	CREATE DATABASE MITRADBDB;
END;
GO

-- USE THE NEWLY CREATED DB
USE MITRADBDB;
PRINT 'USING MITRADBDB DB...'
GO

-- CREATE Customer TABLE
PRINT 'CREATING SecurityQuestion TABLE...'
CREATE TABLE SecurityQuestion(
QuestionId INTEGER NOT NULL,
Question NVARCHAR(50)  NOT NULL,
CREATEDDATE DATETIME DEFAULT CURRENT_TIMESTAMP 
PRIMARY KEY (QuestionId));
GO

-- CREATE Customers TABLE
PRINT 'CREATING CUSTOMERS TABLE...'
CREATE TABLE Customers(
Username NVARCHAR(30) NOT NULL,
FirstName NVARCHAR(50)  NOT NULL, 
LastName NVARCHAR(50) NOT NULL,
PasswordHash BINARY(64) NOT NULL,
Salt UNIQUEIDENTIFIER ,
CustomerStatus BIT NOT NULL,
CreateDate DATETIME DEFAULT CURRENT_TIMESTAMP,
CONSTRAINT [PK_Customer_Username] PRIMARY KEY  (Username));
GO


-- CREATE USERS QA TABLE
PRINT 'CREATING CustomersSecurityQuestion TABLE...'
CREATE TABLE CustomersSecurity(
Username NVARCHAR(30) NOT NULL,
QuestionId INTEGER NOT NULL,
Answer VARCHAR(50) NOT NULL,
CREATEDDATE DATETIME DEFAULT CURRENT_TIMESTAMP
PRIMARY KEY (Username, QuestionId),
FOREIGN KEY (Username) REFERENCES Customers(Username), 
FOREIGN KEY(QuestionId) REFERENCES SecurityQuestion(QuestionId));
GO

-- CREATE BankAccount TABLE
PRINT 'CREATING BankAccount TABLE...'
CREATE TABLE BankAccount(
AccountId NVARCHAR(9) NOT NULL,
Username NVARCHAR(30) NOT NULL,
AccountDescription NVARCHAR(20)  NOT NULL, 
Balance DECIMAL(15, 2)NOT NULL,
AccountStatus BIT NOT NULL,
CreateDate DATETIME DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (AccountId),
CONSTRAINT [FK_User_Username] FOREIGN KEY(Username) REFERENCES Customers(Username)
);
GO