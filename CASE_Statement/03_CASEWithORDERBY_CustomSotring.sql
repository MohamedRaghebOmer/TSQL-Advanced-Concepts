USE CompanyDB;

------------------------------------------

SELECT *
FROM Sales s
ORDER BY
	CASE
		WHEN SaleAmount > 150 THEN 1
		ELSE 2
	END, SaleAmount desc	

------------------------------------------

SELECT *
FROM EmployeeAttendance ae
ORDER BY
	CASE ae.[Status]
		WHEN 'Present' THEN 1
		WHEN 'Absent' THEN 2
		ELSE 3
	END, ae.[AttendanceDate]


------------------------------------------

SELECT * FROM(
SELECT *,
	CASE e.[DepartmentId]
		WHEN 1 THEN 'Humane Resources'
		WHEN 2 THEN 'Marketing'
		WHEN 3 THEN 'Sales'
		WHEN 4 THEN 'IT'
	END AS [Department Name]
FROM Employees e) q
ORDER BY
	CASE q.[Department Name]
		WHEN 'Humane Resources' THEN 1
		WHEN 'Marketing' THEN 2
		WHEN 'Sales' THEN 3
		WHEN 'IT' THEN 4
	END, q.[Name]