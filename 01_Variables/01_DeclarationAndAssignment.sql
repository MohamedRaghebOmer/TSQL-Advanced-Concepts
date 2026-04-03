
-- Declartion
DECLARE @DepartmentName NVARCHAR(50);

-- Assignment by 'SET'
SET @DepartmentName = 'IT';


-- @DepartmentName by 'SELECT'. 
SELECT @DepartmentName = 'IT';

-- Assingment from table
SELECT @DepartmentName = d.[Name]
FROM Departments d
WHERE d.[DepartmentId] = 1;


-- Display the result.
SELECT @DepartmentName AS 'Department Name';