-- What database you are refering to
USE RemixxerArt
-- Go sends all the code above to be executed, seperates batches of code to be executed
GO 
--This is how you delete tables
DROP TABLE PersonInfo
GO
--Creating a table called personInto
CREATE table PersonInfo (
	--Creating a int, that doesnt accept nulls, and is a primary key (Values do not repeat more then once)
	--By defualt when adding datatypes, they accept nulls (No value), hence i put NOT NULL in places where i dont want a null to be taken
	ID INT NOT NULL PRIMARY KEY,
	FirstName NVARCHAR(50) NOT NULL,
	MiddleName NVARCHAR(50),
	LastName NVARCHAR(50) NOT NULL,
	--You put commas after everyline, but on last line you do no put a comma, or else it will be a trailing end, and SQL will throw an error. Commas signal new line of code afterwards
	DOB DATE
)
GO
--This is how you alter tables, Alter only takes one command inside of it
ALTER TABLE PersonInfo
	--I add a new column, for height in terms of Centimeters
	ADD HeightCM FLOAT
ALTER TABLE PersonInfo
	-- I alter the description of one column, DOB. You have to re-write the whole description, you cant just add a part expecting to to modify the Column, you need to re-write it.
	ALTER COLUMN DOB DATE NOT NULL
GO

