CREATE PROCEDURE usp_GetEmployeeById2
    @EmployeeId INT,
    @Name NVARCHAR(100) OUTPUT,
    @DepartmentId NVARCHAR(100) OUTPUT,
    @HireDate NVARCHAR(255) OUTPUT,
    @IsFound BIT OUTPUT  -- Additional parameter to indicate if a record was found
AS
BEGIN
    IF EXISTS(SELECT 1 FROM Employees WHERE EmployeeId = @EmployeeId)
    BEGIN
        SELECT 
            @EmployeeId = e.[EmployeeId], 
            @Name = e.[Name], 
            @DepartmentId = e.[DepartmentId],
            @HireDate = e.[HireDate]
        FROM Employees e 
        WHERE e.[EmployeeId] = @EmployeeId;

        SET @IsFound = 1;  -- Set to 1 (true) if a record is found
    END
    ELSE
    BEGIN
        SET @IsFound = 0;  -- Set to 0 (false) if no record is found
    END
END

GO

DECLARE @Id INT = 1,  -- Example EmployeeId
        @Name NVARCHAR(100),
        @DepartmentId INT,
        @HireDate DATE,
        @Found BIT;

EXEC usp_GetEmployeeById2
    @EmployeeId = @Id,
    @Name = @Name OUTPUT,
    @DepartmentId = @DepartmentId OUTPUT,
    @HireDate = @HireDate OUTPUT,
    @IsFound = @Found OUTPUT;

IF @Found = 1
    SELECT @Name as 'Name', @DepartmentId as 'Department Id', @HireDate as 'Hire Date';
ELSE
    PRINT 'Employee not found';