/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'SQL_DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
===============================================================================
*/

USE master;
GO

-- Drop and recreate the 'SQL_DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'SQL_DataWarehouse')
BEGIN
    ALTER DATABASE SQL_DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE SQL_DataWarehouse;
END;
GO

-- Create the 'SQL_DataWarehouse' database
CREATE DATABASE SQL_DataWarehouse;
GO

USE SQL_DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO