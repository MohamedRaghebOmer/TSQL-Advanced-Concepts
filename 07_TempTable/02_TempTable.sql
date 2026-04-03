
CREATE TABLE #EmployeesTable
(
	EmployeeId INT,
	EmployeeName NVARCHAR(50),
	DepartmentId INT
);


-- Insert values
INSERT INTO #EmployeesTable([EmployeeId], [EmployeeName], [DepartmentId])
VALUES (1, 'Mohamed', 1);

INSERT INTO #EmployeesTable([EmployeeId], [EmployeeName], [DepartmentId])
VALUES (2, 'Ahmed', 2);

-- Read from the variable table
SELECT * FROM #EmployeesTable;

-- Read with condition
SELECT * FROM #EmployeesTable
WHERE [EmployeeId] = 1;

-- Update statement
UPDATE #EmployeesTable
SET [EmployeeName] = 'Ibrahem'
WHERE [EmployeeId] = 1;

-- Delete statement
DELETE FROM #EmployeesTable
WHERE [EmployeeId] = 2;

-- Drop (delete) the temporary table to cleanup 
DROP TABLE #EmployeesTable;
