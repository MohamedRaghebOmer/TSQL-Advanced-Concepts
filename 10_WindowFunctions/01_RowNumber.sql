USE [CompanyDB];

-- Without Row Count
SELECT 
	e.[EmployeeId],
	e.[Name],
	e.[HireDate],
	e.[DepartmentId]
FROM Employees e
ORDER BY HireDate DESC

-- With Row Count
SELECT 
	e.[EmployeeId],
	e.[Name],
	e.[HireDate],
	e.[DepartmentId],
	ROW_NUMBER() OVER (ORDER BY e.[HireDate] DESC) AS 'RowNum'
FROM Employees e
ORDER BY HireDate DESC;