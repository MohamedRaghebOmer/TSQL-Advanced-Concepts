

DECLARE @num INT = 4, @Message NVARCHAR(11);

SET @Message = CASE @num
		WHEN 1 THEN 'Number is 1'
		WHEN 2 THEN 'Number is 2'
		WHEN 3 THEN 'Number is 3'
		WHEN 4 THEN 'Number is 4'
		ELSE 'Number is 5 or greater'
	END;


	PRINT @Message;