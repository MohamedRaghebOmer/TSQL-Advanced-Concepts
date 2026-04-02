

IF NOT EXISTS (SELECT 1 FROM Customers c WHERE c.[Name] = 'Jane Smith')
	PRINT 'Jane Smith is NOT there';
ELSE
	PRINT 'Jane Smith is there';