
DECLARE @Row INT = 1, @Column INT = 1;


WHILE (@Row <= 10)
	BEGIN
		-- Reset the counter
		SET @Column = 1;

		PRINT ('Multiplication Table Of ' + CAST(@Row AS VARCHAR));
		
		-- Print the multipilcation table
		WHILE (@Column <= 10)
			BEGIN
				DECLARE @Result INT = @Row * @Column;
				PRINT(CAST(@Row AS VARCHAR) + ' * ' + CAST(@Column AS VARCHAR) + ' = ' + CAST(@Result AS VARCHAR));
				
				-- Increase the counter
				SET @Column = @Column + 1;
			END	
		
		-- Move to the next row
		SET @Row = @Row + 1;

		-- Print an empty line
		PRINT('');
	END