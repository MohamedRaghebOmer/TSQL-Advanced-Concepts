
-- Create Trigger on updating a student
CREATE TRIGGER trg_AfterStudentUpdated
ON Students
AFTER UPDATE -- When update
AS
BEGIN
	
    IF UPDATE([Grade]) -- Work only if the grade is updated
    BEGIN
        INSERT INTO StudentUpdateLog([StudentID], [OldGrade], [NewGrade], [UpdatedAt])
        SELECT i.[StudentID], d.[Grade] AS 'OldGrade', i.[Grade] AS 'NewGrade', SYSDATETIME()
	    FROM INSERTED i
	    INNER JOIN DELETED d
        ON i.[StudentID] = d.[StudentID]; -- [StudentID] is auto number (can NOT be changed)
    END
END

GO

-- Watch log table before inserting a new record into students table
SELECT *
FROM StudentUpdateLog;

-- Update a student grade
UPDATE Students
SET [Grade] = 90
WHERE StudentID = 1;

-- Watch the defference
SELECT *
FROM StudentUpdateLog;

GO