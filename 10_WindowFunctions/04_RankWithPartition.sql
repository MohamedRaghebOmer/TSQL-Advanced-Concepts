
-- Ranking window functions like ROW_NUMBER, RANK, DESE_RANK requeire order by to know how to order/rank the column
-- unlike aggregate functions whick does not requeire order by
SELECT *,
DENSE_RANK() OVER (PARTITION BY s.[Subject] ORDER BY s.[Grade]) AS 'Rank By Subject'
FROM Students s