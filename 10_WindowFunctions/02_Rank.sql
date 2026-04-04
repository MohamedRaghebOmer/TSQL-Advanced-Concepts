
SELECT *,
RANK() OVER (ORDER BY s.[Grade] DESC) AS 'Grade Rank'
FROM Students s
ORDER BY s.[Grade] DESC