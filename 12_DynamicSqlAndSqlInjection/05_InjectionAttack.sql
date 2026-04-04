
-- Sql injection
DECLARE @input NVARCHAR(50) = '1 or 1=1';


DECLARE @sql NVARCHAR(MAX)
SET @sql = 'SELECT * FROM Students WHERE studentID = ' + @input
EXEC(@sql)