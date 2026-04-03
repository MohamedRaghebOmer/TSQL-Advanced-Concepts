
USE CompanyDB;


SELECT
    e2.[Name],
    e2.[Department],
    e2.[Salary],
    e2.[PerformanceRating],
    Bonus = CASE 
                WHEN e2.[Department] = 'Sales' THEN
                    CASE 
                        WHEN e2.[PerformanceRating] > 90 THEN e2.[Salary] * 0.15
                        WHEN e2.[PerformanceRating] BETWEEN 75 AND 90 THEN e2.[Salary] * 0.10
                        ELSE e2.[Salary] * 0.05
                    END
                WHEN e2.[Department] = 'HR' THEN
                    CASE 
                        WHEN e2.[PerformanceRating] > 90 THEN e2.[Salary] * 0.10
                        WHEN e2.[PerformanceRating] BETWEEN 75 AND 90 THEN e2.[Salary] * 0.08
                        ELSE e2.[Salary] * 0.04
                    END
                ELSE
                    CASE 
                        WHEN e2.[PerformanceRating] > 90 THEN e2.[Salary] * 0.08
                        WHEN e2.[PerformanceRating] BETWEEN 75 AND 90 THEN e2.[Salary] * 0.06
                        ELSE e2.[Salary] * 0.03
                    END
            END
FROM Employees2 e2;