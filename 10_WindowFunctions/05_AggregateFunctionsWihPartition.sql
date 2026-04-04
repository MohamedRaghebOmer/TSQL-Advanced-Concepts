
-- Aggregate window functions (AVG, SUM, etc.) don’t require ORDER BY 
-- because they compute over the entire partition, unlike ranking functions which need ordering
SELECT *,
	AVG(s.[Grade]) OVER (PARTITION BY s.[Subject]) AS 'Subject Avg Grade',
	SUM(s.[Grade]) OVER (PARTITION BY s.[Subject]) as 'Subject Total Grade'
FROM Students s