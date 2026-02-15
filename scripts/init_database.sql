/*
==================================
Create Database and schemas
==================================
Script Purpose:
		This script drops the existing database called 'DateWareHouse' and creates new 
		database called 'DataWareHouse'. In the DataWareHouse it creates 3 schemas.
		1.Bronze , 2. silver, 3. Gold
WARNING:
		This script deletes the database 'DataWareHouse' if already exists. Make sure 
		there is no important data in the database.
*/

--Delete existing DataWareHouse if it already exists.
USE master;
GO
	
IF EXISTS(SELECT 1 FROM sys.databases WHERE name = 'DataWareHouse')
	BEGIN
		ALTER DATABASE DataWareHouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
		DROP DATABASE DataWareHouse;
	END;
GO

--Create the 'DataWareHouse' Database.
CREATE DATABASE DataWareHouse;
GO
	
USE DataWareHouse;
GO
	
--Create Schemas
CREATE SCHEMA bronze;
GO 
	
CREATE SCHEMA silver;
GO 
	
CREATE SCHEMA gold;
GO 

