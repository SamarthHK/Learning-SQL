USE RemixxerArt
GO
DROP VIEW AgeToDevice
GO
--Creating a view of Cartesian Product, what it does is displays all combinations of mutliple rows of info, 
--run the damn code to understand it
--BTW you only get cartesian product if you use CROSS JOIN in from, doesnt happen when you use JOIN
--Cartesian stacks the data, JOIN joins the data
CREATE VIEW AgeToDevice AS
SELECT
d.Phone,
--From DOB im getting age in years by getting difference of birth year by current year
DATEDIFF(YEAR,p_i.DOB,GETDATE()) AS Age,
'_____' AS USED
FROM 
--As each table are 100 elements, that would create a view of 100,000 elements which is... not good for PC
--Selecting the top 10 of ID and DOB or PHONE as p_i or d
--Can use comma or CROSS JOIN to pull data FROM multiple tables
(SELECT TOP 10 ID,DOB FROM PersonInfo) AS p_i,
(SELECT TOP 10 ID,PHONE FROM Device) AS d
GO
SELECT * FROM AgeToDevice

