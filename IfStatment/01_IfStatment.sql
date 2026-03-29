DECLARE @a INT = 50, @b INT = 20;


-- We can use >, <, =, !=, <=, >=
IF @a != @b
	BEGIN
		PRINT 'A greater than B';
	END
