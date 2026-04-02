

DECLARE @Balance DECIMAL(10, 2) = 950.00, @Withdrawal DECIMAL = 100.00;

PRINT ('Balance Before withdrawal is: ' + CAST(@Balance AS VARCHAR));

WHILE @Balance > 0
	BEGIN
		SET @Balance = @Balance - @Withdrawal;

		IF (@Balance <= 0)
			BEGIN
				PRINT ('Insufficient Balance for withdrawal');
				BREAK;
			END

		PRINT ('Balance: ' + CAST(@Balance AS VARCHAR));
	END	