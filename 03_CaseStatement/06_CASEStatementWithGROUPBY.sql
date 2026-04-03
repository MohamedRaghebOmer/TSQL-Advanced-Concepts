
USE CompanyDB;

SELECT
    q.[PerformanceCategory],
    COUNT(*) AS NumberOfEmployees,
    AVG(Salary) AS AverageSalary
FROM
    (SELECT
        e2.[Name],
        e2.[Salary],
        CASE
            WHEN e2.[PerformanceRating] >= 80 THEN 'High'
            WHEN e2.[PerformanceRating] >= 60 THEN 'Medium'
            ELSE 'Low'
        END AS PerformanceCategory
    FROM Employees2 e2) q
GROUP BY PerformanceCategory;

