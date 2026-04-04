CREATE FUNCTION dbo.GetStudentsBySubject(@SubjectName NVARCHAR(50))
RETURNS TABLE
AS RETURN (
	SELECT * 
	FROM Students s
	WHERE s.[Name] = @SubjectName);


SELECT * FROM dbo.GetStudentsBySubject('Bob');