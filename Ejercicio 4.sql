CREATE LOGIN jelagos WITH PASSWORD = 'Jl231002'
GO

USE AdventureWorks2019
GO

CREATE USER jelagos FOR LOGIN jelagos WITH DEFAULT_SCHEMA = dbo;

ALTER ROLE Vendedores ADD MEMBER jelagos
GO