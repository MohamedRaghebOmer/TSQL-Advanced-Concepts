CREATE PROCEDURE sp_GetAllEmployees
AS SELECT * FROM Employees;

GO

EXEC sp_GetAllEmployees;