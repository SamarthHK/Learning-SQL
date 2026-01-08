USE RemixxerArt
GO
DELETE FROM Device 
WHERE ID >90
GO
DROP VIEW JoinTest
GO
CREATE VIEW JoinTest AS
SELECT 
p_i.ID,
p_i.FirstName,
p_i.LastName,
p_i.DOB,
d.Phone
FROM PersonInfo p_i
--INNER JOIN Works by showing rows that match the ON condition in both tables
--No point writing INNER JOIN, writing just JOIN gives the same
--Cannot use LEFT or RIGHT keywords with INNER JOIN
INNER JOIN dbo.Device d on p_i.ID = d.ID
GO
ALTER VIEW JoinTest AS
SELECT 
p_i.ID,
p_i.FirstName,
p_i.LastName,
p_i.DOB,
d.Phone
FROM PersonInfo p_i
--NOTE,
--FULL OUTER JOIN shows all feilds from both tables, even if there isnt matches from two tables it all is list
--LEFT OUTER JOIN shows all feilds from table in the FROM statemnt (p_i in this case) even if it doesnt match with d
--RIGHT OUTER JOIN shows all feilds from table in JOIN statemnt (d in this case) even if it doesnt match with p_i
FULL OUTER JOIN dbo.Device d on p_i.ID = d.ID
GO
SELECT * FROM JoinTest
GO