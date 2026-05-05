/*
===============================================================================
Database & Schema Setup
===============================================================================

Description:
    This script initializes the core data warehouse environment. It creates 
    the physical database, configures modern SQL Server 2025 settings, 
    and establishes the Medallion architecture schemas to ensure logical 
    separation of concerns.

Usage:
    Run this script once as a SysAdmin or user with CREATE DATABASE permissions.
===============================================================================
*/


USE master;
GO
-- Drop and recreate the 'DataWarehoouse' database
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO

  
-- Create your main project container
CREATE DATABASE DataWarehouse;
GO

-- Switch into your new database
USE DataWarehouse;
GO

-- Create the schema (the sub-containers)
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO

