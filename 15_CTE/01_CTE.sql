--Sub Query
select * from 
(
  SELECT EmployeeId, Name, Sales
    FROM Employees6
    WHERE Department = 'Sales'
) SalesStaff ;



--CTE
WITH SalesStaff AS
(
    SELECT EmployeeId, Name, Sales
    FROM Employees6
    WHERE Department = 'Sales'
)
SELECT * FROM SalesStaff;

-------------------------------------------------------

--Using Sub Query
select * from 
(

 SELECT Department, SUM(Sales) AS TotalSales
    FROM Employees6
    GROUP BY Department

) DepartmentSales;


-- Using CTE
WITH DepartmentSales AS
(
    SELECT Department, SUM(Sales) AS TotalSales
    FROM Employees6
    GROUP BY Department
)
SELECT Department, TotalSales FROM DepartmentSales;
