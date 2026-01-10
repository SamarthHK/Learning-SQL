USE AdventureWorks2022
GO
--Shitty self join, cant find proper example so this will sufice IG
ALTER VIEW SelfJoinTest AS
SELECT DISTINCT  --Keyword DISTINCT makes it so all data shown has to be unique (Whole row specific)
--Shows LoginID from B when it satisfys the ON condition
B.LoginID AS 'Example' --This is how you re-name column when displayed
FROM HumanResources.Employee O
INNER JOIN HumanResources.Employee B
--When BussinessID is from Organization level, then output the valid LoginID
ON O.OrganizationLevel = B.BusinessEntityID
GO
SELECT * FROM SelfJoinTest