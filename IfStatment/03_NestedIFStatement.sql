

DECLARE @Grade INT = 92;


IF @Grade >= 90
	BEGIN
		PRINT 'A';
	END
ELSE
	BEGIN
		IF @Grade >= 80
			BEGIN
				PRINT 'B';
			END
		ELSE
			BEGIN
				PRINT 'C or lower';
			END
	END



IF @Grade >= 90
	BEGIN
		PRINT 'A';
	END
ELSE IF @Grade > 80
	BEGIN
		PRINT 'B';
	END
ELSE
	BEGIN
		PRINT 'C or lower';
	END