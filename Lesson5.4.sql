USE RemixxerArt
GO
SELECT *
FROM PersonInfo p_i
--Order by means to sort
--Here i am sorting by FirstName Descending,
--Then within those with same first names, order by MiddleName Descending,
--Then within those reults order by the last name descending
--If you dont put in DESC, by default it takes ascending
ORDER BY FirstName DESC, MiddleName DESC, LastName DESC 
GO
SELECT *
FROM Device d
--Using Like in a where statements allow Wildcard charecters
--Wild cars inclide:
--%: Any number of charecters of any charecters
--_: Exactly one charecter of any charecter
--[] List of any charecter
--[-]Range of charecers
--[^]Not this charecter
WHERE d.Phone LIKE 'iphone%'
GO
--TOP means show the top results, example here it shows the top 10 results
SELECT TOP 10 *
FROM PersonInfo
--Basically IF condition, and BETWEEN checks if a value is inbetween two values
--AND, NOT, and OR all dont have special names or keywords, just the name itself
WHERE DOB BETWEEN '1980-01-01' AND '1990-01-01' AND NOT
MiddleName IN ('X.','Y.','Z.')
ORDER BY MiddleName DESC