-- Create Trigger to work instead of 'DELETE' keyword
CREATE TRIGGER trg_InsteadOfDeleteStudent
ON Students
INSTEAD OF DELETE
AS
BEGIN
	UPDATE Students
	SET [IsActive] = 0
	FROM Students s
	INNER JOIN DELETED d
		ON s.[StudentID] = d.[StudentID]
END;

GO

-- Watch the table before deleting
SELECT * 
FROM Students;

-- Detete student with id = 5. This will fire the trigger 'INSTEAD OF DELETE'
-- and will not delete the student but set 'IsActive' = 0
DELETE FROM Students
WHERE [StudentID] = 4;

-- Watch the result. Is Active set to 0
SELECT * 
FROM Students;