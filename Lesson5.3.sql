USE AdventureWorks2022
GO
--SELF JOIN's just plop two rows together
--Doesnt check if a row meets a condition to show, thats a WHERE condition
ALTER VIEW SelfJoin AS
SELECT DISTINCT
p1.ProductID,
p1.Name,
p1.ProductNumber
FROM Production.Product p1 
JOIN Production.Product p2
ON p1.MakeFlag = p2.FinishedGoodsFlag
GO
SELECT * FROM SelfJoin
GO
