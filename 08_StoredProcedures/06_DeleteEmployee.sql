
CREATE PROCEDURE usp_DeleteEmployee
	@EmployeeId INT
AS BEGIN
	DELETE FROM Employees WHERE [EmployeeId] = @EmployeeId;
END

GO

EXEC usp_DeleteEmployee @EmployeeId = 7