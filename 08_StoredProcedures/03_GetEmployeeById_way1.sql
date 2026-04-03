
CREATE PROCEDURE sp_GetEmployeeById
	@EmployeeId INT
AS BEGIN
	SELECT * FROM Employees e WHERE e.[EmployeeId] = @EmployeeId;
END

GO

EXEC sp_GetEmployeeById
	@EmployeeId = 3;