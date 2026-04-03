DECLARE @TransferAmount DECIMAL(10, 2) = 300.00;
DECLARE @FromAccount INT = 1;
DECLARE @ToAccount INT = 2;

BEGIN TRANSACTION
	BEGIN TRY
		
		-- Withdraw from Account with id = 1
		UPDATE Accounts
		SET [Balance] = [Balance] - @TransferAmount
		WHERE [AccountID] = @FromAccount;

		-- Deposit to the other account with id = 2
		UPDATE Accounts
		SET [Balance] = [Balance] + @TransferAmount
		WHERE [AccountID] = @ToAccount;

		-- Log into Transactions table
		INSERT INTO Transactions([FromAccount], [ToAccount], [Amount], [Date])
			VALUES (@FromAccount, @ToAccount, @TransferAmount, GETDATE())

		-- Commit the transaction
		COMMIT;

		PRINT 'Transfer Done Successfully!';

	END TRY
	BEGIN CATCH
		-- Rollback in case of error
		ROLLBACK;

		-- Error handling code here
		PRINT ERROR_MESSAGE();
	END CATCH