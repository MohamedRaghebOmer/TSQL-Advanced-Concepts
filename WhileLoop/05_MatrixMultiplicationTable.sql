
DECLARE @Row INT = 1;
DECLARE @Column INT = 1;
DECLARE @RowString VARCHAR(50) = '';
DECLARE @ColumnString VARCHAR(50) = '';


-- Print matrix header
WHILE @Column <= 10
	BEGIN
		SET @ColumnString = @ColumnString + CHAR(9) + CAST(@Column AS VARCHAR);
		SET @Column = @Column + 1;
	END
PRINT(@ColumnString);


-- Print multiplicatio table
WHILE(@Row <= 10)
	BEGIN
		-- Reset column
		SET @Column = 1;

		-- Print Row Number
		SET @RowString = CAST(@Row AS VARCHAR);

		WHILE(@Column <= 10)
			BEGIN					

				DECLARE @Result INT = @Row * @Column;
				SET @RowString = @RowString + CHAR(9) + (CAST(@Result AS VARCHAR));
				
				-- Increase the column counter
				SET @Column = @Column + 1;
			END

		PRINT(@RowString);

		-- Increase the row counter
		SET @Row = @Row + 1;
	END