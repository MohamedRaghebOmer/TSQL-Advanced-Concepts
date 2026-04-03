

DECLARE @Counter INT = 1;

WHILE @Counter <= 5
	BEGIN
		PRINT('Counter: ' + CAST(@Counter AS VARCHAR));
		SET @Counter = @Counter + 1;
	END

PRINT('');
PRINT('Reversed Counter:');
PRINT('');
SET @Counter = 5;

WHILE @Counter > 0
	BEGIN 
		PRINT ('Counter: ' + CAST(@Counter AS VARCHAR));
		SET @Counter = @Counter - 1;
	END