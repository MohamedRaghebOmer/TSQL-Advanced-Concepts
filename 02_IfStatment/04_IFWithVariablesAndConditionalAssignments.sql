DECLARE @max INT, @a INT, @b INT;

SET @a = 10;
SET @b = 20;

IF @a > @b
	SET @max = @a;
ELSE
	SET @max = @b;

PRINT @max;