USE AdventureWorks2019
GO


IF OBJECT_ID (N'fc_employeeAge') IS NOT NULL
    DROP FUNCTION fc_employeeAge
GO

CREATE FUNCTION fc_employeeAge()
RETURNS TABLE 

AS
RETURN(
SELECT e.LoginID , E.JobTitle , E.BirthDate AS Nacimiento, E.HireDate ,DATEPART(YEAR,GETDATE())-DATEPART(YEAR,e.BirthDate) AS Edad, DATEPART(YEAR,GETDATE())-DATEPART(YEAR,E.HireDate)AS Antiguedad
FROM HumanResources.Employee e
INNER JOIN Person.Person p on e.BusinessEntityID = p.BusinessEntityID
)
GO
SELECT * FROM fc_employeeAge()


