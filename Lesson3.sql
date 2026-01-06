USE RemixxerArt
GO
--Procedure is bassically a function
--but procedures are meant to execute actions (Has ability to edit databases)
--Functions are meant to do arethmatic (Only has ability to view databases)
CREATE PROCEDURE PullName 
--Declaring variables
--By default they are input variables, but giving keyword output makes its a OUTPUT
@ID INT,
@Output NVARCHAR(50) OUTPUT
--AS means the begging of the instructions of the procedure
AS
--Beggining of the EXEC
BEGIN
SELECT @Output = p_i.FirstName
FROM PersonInfo p_i
WHERE p_i.ID = @ID
--End of EXEC
END
GO
DROP PROCEDURE PullName
--This is how you declare a varaible
DECLARE @Name NVARCHAR(50)
--Can also execute if there is no output to specify by EXEC PullName 1
EXEC PullName 
	@ID = 1,
	@Output = @Name OUTPUT
--Viewing @Name, and the collums name will be called FirstName
SELECT @Name AS FirstName
GO

ALTER PROCEDURE PullName
	@ID INT
AS
BEGIN
	SELECT p_i.FirstName
	FROM PersonInfo p_i
	WHERE p_i.ID = @ID
	RETURN
END
GO
--When you use return statement you dont need to specify output or input variables
--You can simply input a value that matches what the input takes, and voila, not a select statement of veiw needed to see info!!!
EXEC PullName 10
