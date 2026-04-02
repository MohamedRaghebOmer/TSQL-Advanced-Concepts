
DECLARE @Counter INT = 1;

-- Break Example
WHILE @Counter <= 10
	BEGIN
		PRINT(CAST(@Counter AS VARCHAR));

		-- Stop the loop at number 5
		IF @Counter = 5
			BREAK;

		SET @Counter = @Counter + 1;
	END


SET @Counter = 0;

PRINT('');
PRINT('Odd number from 1 to 10');

WHILE @Counter < 10
	BEGIN
		-- Increase the counter
		SET @Counter = @Counter + 1;

		IF @Counter % 2 = 0 -- If the current number is even number
				Continue; -- Skip

		-- Print the current counter if odd
		PRINT CAST(@Counter AS VARCHAR);
	END