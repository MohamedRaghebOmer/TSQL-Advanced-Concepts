

SELECT *
FROM dbo.GetStudentsBySubject('Math') s
INNER JOIN Teachers t
ON s.[Subject] = t.[Subject]
WHERE s.Grade > 80;