USE RemixxerArt
GO
--Horible example for union as UNION removes dupe data
ALTER VIEW UnionTest AS
--Union bassibally stacks one set of data ontop of another, and this can be sorted by putting ORDER BY at the end
SELECT
p_i.ID
FROM PersonInfo p_i
--Using Intersect instead of union will only show data that matches
--Think of UNION like or statement and INTERSECT like and statement
UNION
SELECT
d.ID
FROM Device d
GO
SELECT * FROM UnionTest