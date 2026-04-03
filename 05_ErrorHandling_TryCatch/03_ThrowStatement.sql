DECLARE @Amount INT = -5;

BEGIN TRY
    IF @Amount < 0
    BEGIN
        THROW 51000, 'Amount cannot be negative.', 1;
    END

    -- Continue working

END TRY
BEGIN CATCH
    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    DECLARE @ErrorState INT = ERROR_STATE();

    PRINT 'Error Message: ' + @ErrorMessage;
    PRINT 'Error State: ' + CAST(@ErrorState AS VARCHAR);

    IF @ErrorState = 1
        PRINT 'Reason: Negative amount is not allowed.';
END CATCH