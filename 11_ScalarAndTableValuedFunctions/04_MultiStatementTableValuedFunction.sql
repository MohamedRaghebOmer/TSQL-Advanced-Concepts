CREATE FUNCTION dbo.GetTopPerformingStudents()
RETURNS @Result TABLE(
StudentId INT PRIMARY KEY ,
Name NVARCHAR(50),
Subject NVARCHAR(50),
Grade INT)
AS
BEGIN
	INSERT INTO @Result(StudentId, Name, Subject, Grade)
	SELECT TOP 3 StudentID, Name, Subject, Grade
	FROM Students
	ORDER BY Grade DESC

	RETURN;
END

GO

-- Usage of the multi valued function
SELECT *
FROM dbo.GetTopPerformingStudents();