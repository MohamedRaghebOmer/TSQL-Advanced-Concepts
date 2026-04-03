
CREATE PROCEDURE usp_CheckEmployeeExists
	@EmployeeId INT
AS BEGIN
	IF EXISTS(SELECT 1 FROM Employees WHERE [EmployeeId] = @EmployeeId)
		RETURN 1;
	ELSE
		RETURN 2;
END

GO

DECLARE @Result INT;

EXEC @Result = usp_CheckEmployeeExists @EmployeeId = 1;

IF @Result = 1
	PRINT 'Employee Exists';
ELSE
	PRiNT 'Employee does NOT Exist';