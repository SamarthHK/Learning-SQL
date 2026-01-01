USE AdventureWorks2022
GO
CREATE VIEW PersonInfo AS
SELECT
	p.[BusinessEntityID],
	p.[FirstName],
	p.[LastName],
	a.[City],
	a.[PostalCode],
	a.[AddressLine1]
FROM [Person].[Person] p
INNER JOIN [Person].[Address] a
ON p.[ModifiedDate] = a.[ModifiedDate]
GO
SELECT * FROM PersonInfo