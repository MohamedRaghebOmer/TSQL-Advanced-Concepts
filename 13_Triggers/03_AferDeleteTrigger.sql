
-- Create student logs table
-- Create trigger fired after delete a student
CREATE TRIGGER trg_AfterStudentDeleted
ON Students
AFTER DELETE
AS
BEGIN
    INSERT INTO StudentDeleteLog([StudentID], [Name], [Subject], [Grade])
    SELECT [StudentID], [Name],  [Subject], [Grade]
    FROM DELETED
END;

GO

SELECT *
FROM Students;

-- Watch delete log table before deleting a student
SELECT *
FROM StudentDeleteLog;

-- Delete a student
DELETE 
FROM Students
WHERE [StudentID] = 6;

-- Watch the difference after deleting the student
SELECT *
FROM StudentDeleteLog;

SELECT *
FROM Students;