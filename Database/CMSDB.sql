CREATE DATABASE CMSDB
GO
USE CMSDB;
GO
CREATE TABLE Catagorys (
	CatagoryID INT IDENTITY(1,1) PRIMARY KEY,
	CatagoryName VARCHAR(20) NOT NULL
)
GO
CREATE TABLE Contacts (
	ContactID INT IDENTITY (1,1) PRIMARY KEY, 
	Name VARCHAR(20) NOT NULL,
	MobileNumber VARCHAR(20) UNIQUE NOT NULL,
	Email VARCHAR(50),
	CatagoryID INT NOT NULL,
	Address VARCHAR(40),
	FOREIGN KEY (CatagoryID) REFERENCES Catagorys(CatagoryID)
)
GO