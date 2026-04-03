
-- Create sp
CREATE PROCEDURE sp_AddNewEmployee
				@Name NVARCHAR(50), 
				@DepartmentId INT,
				@HireDate DATE, 
				@NewPersonId INT OUTPUT
AS 
BEGIN
	INSERT INTO Employees([Name], [DepartmentId], [HireDate])
		VALUES (@Name, @DepartmentId, @HireDate);
	
	SELECT @NewPersonId = SCOPE_IDENTITY();
END

GO

--Execute sp
DECLARE @NewPersonId INT,
        @NowDate DATE = GETDATE();

EXEC sp_AddNewEmployee
	@Name = 'Mohamed',
	@DepartmentId = 1, 
	@HireDate = @NowDate,
	@NewPersonId = @NewPersonId OUTPUT;

SELECT @NewPersonId AS 'NewPersonId'