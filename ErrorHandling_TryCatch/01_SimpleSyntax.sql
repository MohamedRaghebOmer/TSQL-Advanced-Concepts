USE [CompanyDB]
GO

BEGIN TRY
    INSERT INTO [dbo].[Customers] ([Name] ,[LoyaltyPoints])
         VALUES (NULL, 5)
END TRY
BEGIN CATCH
    PRINT('Error: ' + ERROR_MESSAGE());
END CATCH