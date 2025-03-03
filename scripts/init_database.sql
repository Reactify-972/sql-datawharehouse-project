/*
Ce script crée une base de données "DataWarehouse" si elle n'existe pas déjà,
puis crée trois schémas (bronze, silver, gold) à l'intérieur de cette base de données.
Ces schémas sont couramment utilisés dans une architecture de data lake pour 
organiser les données selon leur niveau de traitement et de qualité.
*/

-- Vérification de l'existence et création de la base de données
USE master;
GO

IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    CREATE DATABASE DataWarehouse;
    PRINT 'Base de données DataWarehouse créée.';
END
ELSE
BEGIN
    PRINT 'La base de données DataWarehouse existe déjà.';
END
GO

-- Utilisation de la base de données créée
USE DataWarehouse;
GO

-- Création des schémas pour l'architecture en couches du data lake
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
