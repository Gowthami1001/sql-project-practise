/*
===========================
Create database and Schemas
=========================== 
Purpose: This script creates a new database named "Datawarehouse" after checking if it already exists. Running the script makes, if the database already exists,
  it is dropped and recreated. Additionally, the script creates three schemas("bronze","silver","gold") within the database.
*/

Use master;
Go

--Drop and recreate the "Datawarehouse" database
If Exists (select 1 from sys.databases where name="Datawarehouse")
Begin
  Alter Database Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DATAWAREHOUSE;
END;
GO

--create "Datawarehouse" database 
create database Datawarehouse;

Use Datawarehouse;
GO

---CREATE SCHEMAS
CREATE SCHEMA bronze;
Go
CREATE SCHEMA silver;
Go
CREATE SCHEMA gold;
