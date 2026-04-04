-- Create Tirgger
CREATE TRIGGER trg_AfterStudentInserted 
ON Students
AFTER INSERT
AS 
BEGIN
	INSERT INTO StudentInsertLog(StudentID, Name, Subject, Grade, InsertedAt, ActionType)
	SELECT StudentID, Name, Subject, Grade, GETDATE(), 'Insert'
	FROM INSERTED;
END;

GO

-- Watch the table before inserting
SELECT *
FROM StudentInsertLog;

-- Insert new record into students
INSERT INTO Students([Name], [Subject], [Grade])
VALUES ('Ali', 'IS', 100)

-- Watch the defference
SELECT *
FROM StudentInsertLog;
