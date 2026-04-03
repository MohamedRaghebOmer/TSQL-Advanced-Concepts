DECLARE @TransferAmount DECIMAL(10, 2) = 300.00;
DECLARE @FromAccount INT = 1;
DECLARE @ToAccount INT = 2;
DECLARE @FromBalance DECIMAL(10,2);

BEGIN TRANSACTION

BEGIN TRY

    -- 1. Check if sender account exists
    IF NOT EXISTS (SELECT 1 FROM Accounts WHERE AccountID = @FromAccount)
        THROW 53000, 'User error', 1;

    -- 2. Check if receiver account exists
    IF NOT EXISTS (SELECT 1 FROM Accounts WHERE AccountID = @ToAccount)
        THROW 53000, 'User error', 2;

    -- 3. Get balance
    SELECT @FromBalance = Balance
    FROM Accounts
    WHERE AccountID = @FromAccount;

    -- 4. Check balance
    IF @FromBalance < @TransferAmount
        THROW 51000, 'Payment error', 1;

    -- 5. Withdraw
    UPDATE Accounts
    SET Balance = Balance - @TransferAmount
    WHERE AccountID = @FromAccount;

    -- 6. Deposit
    UPDATE Accounts
    SET Balance = Balance + @TransferAmount
    WHERE AccountID = @ToAccount;

    -- 7. Log transaction
    INSERT INTO Transactions (FromAccount, ToAccount, Amount, Date)
    VALUES (@FromAccount, @ToAccount, @TransferAmount, GETDATE());

    -- 8. Commit
    COMMIT;

    PRINT 'Transfer completed successfully.';

END TRY
BEGIN CATCH

    -- Rollback
    ROLLBACK;

    DECLARE @ErrorNumber INT = ERROR_NUMBER();
    DECLARE @ErrorState INT = ERROR_STATE();
    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();

    PRINT 'Error occurred.';
    PRINT 'Message: ' + @ErrorMessage;
    PRINT 'ErrorNumber: ' + CAST(@ErrorNumber AS VARCHAR);
    PRINT 'ErrorState: ' + CAST(@ErrorState AS VARCHAR);

    -- Custom handling
    IF @ErrorNumber = 51000 AND @ErrorState = 1
        PRINT 'Reason: Insufficient balance';

    ELSE IF @ErrorNumber = 53000 AND @ErrorState = 1
        PRINT 'Reason: Sender account not found';

    ELSE IF @ErrorNumber = 53000 AND @ErrorState = 2
        PRINT 'Reason: Receiver account not found';

END CATCH