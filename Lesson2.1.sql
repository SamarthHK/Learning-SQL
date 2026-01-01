USE RemixxerArt
GO
--DROP TABLE PhysicalInfo
CREATE TABLE PhysicalInfo(
ID INT PRIMARY KEY NOT NULL,
BMI FLOAT,
WeightKG FLOAT NOT NULL,
--Creating a Column for mile times, i set parameters between 0 and 3600 seconds, so 0-60 minutes
MileTimeSec SMALLINT,
	CHECK (MileTimeSec BETWEEN 0 AND 3600),
-- Creating a foreign key linking ID of Physical info to PersonInfo
CONSTRAINT FK_PhysicalInfo_PersonInfo
	--What you want the Foreign key to be
	FOREIGN KEY (ID)
	--Refers the foreign key to what
	REFERENCES PersonInfo(ID)
	--When a ID is deleted in Person(ID), and that exists in PhysicalInfo(ID) then it deletes the one in PhysicalInfo(ID)
	ON DELETE CASCADE
	-- IDK What this is rn.....
	--ON UPDATE CASCADE 
)
GO