USE RemixxerArt
GO
--Creating a Veiw, A View points to a portion of a database or databases
CREATE VIEW ViewPhysicalInfo AS
--What is seen in the database:
SELECT 
ID,
BMI,
MileTimeSec
--From Table PhysicalInfo
FROM PhysicalInfo
--Show rows where BMI is Less then 24.9 and Greater then 18.5
WHERE BMI BETWEEN 18.5 AND 24.9
--Shows rows that satisfy the condition above AND is MileTimeSec is greater then 0 and less then 360
AND MileTimeSec BETWEEN 0 AND 360

--Cant have two select statements in the same query
--SELECT * FROM VeiwPhysicalInfo
--How you delete a Veiw
--DROP VIEW VeiwPhysicalInfo