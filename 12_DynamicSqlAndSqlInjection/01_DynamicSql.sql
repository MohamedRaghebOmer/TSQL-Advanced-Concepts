
CREATE PROCEDURE GenerateDynamicSQL1
    @TableName NVARCHAR(128)
AS
BEGIN
    DECLARE @SQL NVARCHAR(MAX);
    SET @SQL = 'SELECT * FROM ' + @TableName;
    EXECUTE(@SQL);
END

Go

CREATE PROCEDURE GenerateDynamicSQL2
    @TableName NVARCHAR(128)
AS
BEGIN
    DECLARE @SQL NVARCHAR(MAX);
    SET @SQL = N'SELECT * FROM ' + QUOTENAME(@TableName);
	EXEC sp_executesql @SQL;

END

GO

DECLARE @RC int
DECLARE @TableName nvarchar(128)

-- TODO: Set parameter values here.

set @TableName='Students';

EXECUTE @RC = [dbo].[GenerateDynamicSQL1] 
   @TableName


EXECUTE @RC = [dbo].[GenerateDynamicSQL2] 
   @TableName