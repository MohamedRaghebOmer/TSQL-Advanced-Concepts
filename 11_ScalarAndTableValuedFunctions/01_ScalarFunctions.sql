
-- Craete Sclar Functions
CREATE FUNCTION dbo.GetSubjectAverageGrade (@SubjectName NVARCHAR(50))
RETURNS INT
AS BEGIN

DECLARE @AvegrageGrade INT;

	SELECT @AvegrageGrade = AVG(s.[Grade])
	FROM Students s
	WHERE s.[Subject] = @SubjectName;

	RETURN @AvegrageGrade;

END;

CREATE FUNCTION dbo.CalculateBonuc(@PerformanceRating INT, @Salary INT)
RETURNS DECIMAL(10, 2)
AS BEGIN

DECLARE @Bonuc DECIMAL(10, 2);

IF @PerformanceRating >= 5
	SET @Bonuc =  @Salary * 0.1;
ELSE
	SET @Bonuc =  @Salary * 0.01;

	RETURN @Bonuc;
END;

GO

SELECT *, dbo.GetSubjectAverageGrade(t.[Subject]) AS 'Average Subject Grades'
FROM Teachers t;

SELECT *, dbo.CalculateBonuc(e2.[PerformanceRating], e2.[Salary]) AS 'Bonuc'
FROM Employees2 e2
