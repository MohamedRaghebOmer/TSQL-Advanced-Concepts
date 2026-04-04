
SELECT *,
DENSE_RANK() OVER (ORDER BY s.[Grade] DESC) AS 'Dense Rank'
FROM Students s
ORDER BY s.[Name]