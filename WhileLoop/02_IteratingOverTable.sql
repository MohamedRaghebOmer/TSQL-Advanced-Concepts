
-- Declare the variables
DECLARE @EmployeeId INT;
DECLARE @MaxId INT;

-- Set Initial values
SELECT @EmployeeId = MIN(e.[EmployeeId]) FROM Employees e;
SELECT @MaxId = MAX(e.[EmployeeId]) FROM Employees e;


-- Iterat over the table
WHILE @EmployeeId <= @MaxId
	BEGIN
		DECLARE @Name NVARCHAR(50);
		SELECT @Name =  e.[Name] FROM Employees e WHERE e.[EmployeeId] = @EmployeeId;

		PRINT @Name;

		-- Get next employee Id greater than current employee id
		SELECT @EmployeeId = MIN(e.[EmployeeId]) FROM Employees e WHERE e.[EmployeeId] > @EmployeeId;
	ENd