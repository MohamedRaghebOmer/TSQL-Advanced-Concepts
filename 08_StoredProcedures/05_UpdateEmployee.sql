CREATE PROCEDURE usp_UpdateEmployee
	@EmployeeId INT,
	@Name NVARCHAR(50),
	@DepartmentId INT,
	@HireDate DATE
AS BEGIN
	UPDATE Employees
	SET [Name] = @Name, [DepartmentId] = @DepartmentId, [HireDate] = @HireDate
	WHERE [EmployeeId] = @EmployeeId;
END

GO

EXEC usp_UpdateEmployee
	@EmployeeId = 1,
	@Name = 'Mohamed',
	@DepartmentId = 1,
	@HireDate = GETDATE());