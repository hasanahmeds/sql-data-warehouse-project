/*
=================================================
Create Database 'DataWarehouse'
=================================================
Script Purpose : 
    This script creates new database named "DataWarehouse" after checking it already exists.
    If the database exists it is dropped and recreated. Additionally the script sets up three schemas
    withing the datase: 'bronze', 'silver', 'gold'.

WARNING:
    Running this script will drop the entire 'DataWarehouse' databse if it exists.
    All data in the database will be permanently deleted. Proceed with caution.
    and ensure proper backups before running this script.
*/

USE master;

---- Drop and recreate the 'DataWarehouse' databse
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

------Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO
  
USE DataWarehouse;
GO

----Create Schemas---------
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
