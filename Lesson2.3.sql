USE RemixxerArt
GO
ALTER TABLE PersonInfo
ALTER COLUMN DOB DATE
GO
INSERT INTO PersonInfo (ID,FirstName,MiddleName,LastName,DOB) VALUES
(1,'samarth',NULL,'harish kumar','2011-4-27'),
(2,'jayson',NULL,'britton',NULL),
(3,'ashrith',NULL,'gottapu',NULL),
(4,'jason',NULL,'mathews',NULL),
(5,'liam',NULL,'pooran',NULL),
(6,'kinshuk',NULL,'panchakarla',NULL),
(7,'attiksh',NULL,'vadlamani',NULL),
(8,'hunter',NULL,'pursley',NULL);
GO
INSERT INTO PhysicalInfo (ID,BMI,WeightKG,MileTimeSec) VALUES
(1, 18.5, 50, 480),
(2, 22.3, 65, 540),
(3, 20.1, 55, 510),
(4, 19.8, 60, 495),
(5, 21.5, 68, 525),
(6, 23.0, 72, 570),
(7, 17.9, 48, 450),
(8, 24.2, 75, 600);
GO
DELETE FROM PhysicalInfo
WHERE ID = 8
GO

ALTER VIEW ViewPhysicalInfo AS
SELECT 
phi.ID,
pei.FirstName,
pei.LastName,
pei.DOB,
phi.BMI,
phi.MileTimeSec
FROM PhysicalInfo phi
INNER JOIN PersonInfo pei
ON phi.ID = pei.ID
WHERE BMI BETWEEN 18.5 AND 24.9
AND MileTimeSec BETWEEN 0 AND 540

GO

SELECT * FROM ViewPhysicalInfo