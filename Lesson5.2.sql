USE AdventureWorks2022
GO
ALTER VIEW Alias AS
SELECT 
EPH.BusinessEntityID,
EPH.Rate AS 'Normal',
STR(EPH.Rate*0.9,8,2) AS 'Discounted'--Taking the string of it, Saying before period 8 digits are allowed there, after period 8 digits are allowed
FROM HumanResources.EmployeePayHistory EPH
GO
SELECT * FROM Alias