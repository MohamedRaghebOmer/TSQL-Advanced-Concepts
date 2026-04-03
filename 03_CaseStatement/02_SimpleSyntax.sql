
USE CompanyDB;


SELECT
	s.[SaleId],
	s.[SaleAmount],
	CASE
		WHEN s.[SaleAmount] <= 100 THEN 'Weak'
		WHEN s.[SaleAmount] BETWEEN 101 AND 200 THEN 'Good'
		WHEN s.[SaleAmount] BETWEEN 201 AND 300 THEN 'Very Good'
		WHEN s.[SaleAmount] > 300 THEN 'Excellent'
		ELSE 'Not Specified'
		END AS [Sale Level]
FROM Sales s