USE RemixxerArt
GO
--DROP TABLE AcademicInfo
CREATE TABLE AcademicInfo(
	ID INT NOT NULL,
	Grade TINYINT NOT NULL,
	SchoolName NVARCHAR(50) NOT NULL,
	GPA FLOAT,
	EnrollmentYear SMALLINT,
	GradYear SMALLINT,
	StudStat NVARCHAR(9)
CONSTRAINT FK_AcademicInfo_PersonInfo
	FOREIGN KEY(ID)
	REFERENCES PersonInfo(ID)
	ON DELETE CASCADE
)
GO

INSERT INTO AcademicInfo(ID,Grade,SchoolName,GPA,EnrollmentYear,GradYear,StudStat) VALUES
(1,10, 'Springfield High', 3.5, 2021, 2025, 'Active'),
(2,12, 'Riverside Prep', 3.8, 2019, 2023, 'Active'),
(3,11, 'Greenwood Academy', 3.2, 2020, 2024, 'Active'),
(4,9, 'Hillcrest School', 3.0, 2022, 2026, 'Active'),
(5,12, 'Maple Leaf High', 3.9, 2019, 2023, 'Graduated'),
(6,10, 'Cedar Valley School', 2.8, 2021, 2025, 'Active'),
(7,11, 'Oakridge Academy', 3.4, 2020, 2024, 'Active'),
(8,12, 'Lakeside High', 3.6, 2019, 2023, 'Graduated');
GO
Drop VIEW Info

ALTER VIEW Info AS
SELECT
	p_i.ID,
	p_i.FirstName,
	p_i.LastName,
	phi.BMI,
	phi.WeightKG,
	phi.MileTimeSec,
	ai.StudStat,
	ai.GPA,
	ai.GradYear
FROM 
	PhysicalInfo phi
INNER JOIN AcademicInfo ai
ON ai.ID = phi.ID 
INNER JOIN PersonInfo p_i
ON phi.ID = p_i.ID;
GO

SELECT * FROM INFO

