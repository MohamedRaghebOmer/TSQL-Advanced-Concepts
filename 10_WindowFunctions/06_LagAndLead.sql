
SELECT *,
	LAG(s.[Grade]) OVER (PARTITION BY s.[Subject] ORDER BY s.[Grade] DESC) AS 'Previous Grade',
	LEAD(s.[Grade]) OVER (PARTITION BY s.[Subject] ORDER BY s.[Grade] DESC) AS 'Next Grade'
FROM Students s
GROUP BY s.[Subject]