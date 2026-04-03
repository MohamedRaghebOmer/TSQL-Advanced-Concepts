-- This script generates an employee attendance report for a specified month and year.
-- It tracks the number of days present, absent, and on leave for a particular employee.

-- Declare variables
DECLARE @ReportMonth INT;
DECLARE @ReportYear INT;
DECLARE @TotalDays INT;
DECLARE @EmployeeId INT;
DECLARE @PresentDays INT;
DECLARE @AbsentDays INT;
DECLARE @LeaveDays INT;

-- Initialize variables
SET @ReportMonth = 7; -- Set the month for the report
SET @ReportYear = 2023; -- Set the year for the report
SET @EmployeeId = 1; -- Set the Employee Id for the report

-- Calculate total days in the month
SET @TotalDays = DAY(EOMONTH(DATEFROMPARTS(@ReportYear, @ReportMonth, 1)));

-- Calculate present days
SELECT @PresentDays = COUNT(*)
FROM EmployeeAttendance ea
WHERE ea.[EmployeeId] = @EmployeeId 
AND MONTH(ea.[AttendanceDate]) = @ReportMonth 
AND YEAR(ea.[AttendanceDate]) = @ReportYear 
AND ea.[Status] = 'Present';

-- -- Calculate absent days
SELECT @AbsentDays = COUNT(*)
FROM EmployeeAttendance ea
WHERE ea.[EmployeeId] = @EmployeeId 
AND MONTH(ea.[AttendanceDate]) = @ReportMonth 
AND YEAR(ea.[AttendanceDate]) = @ReportYear 
AND ea.[Status] = 'Absent';

-- Calculate leave days
SELECT @LeaveDays = COUNT(*)
FROM EmployeeAttendance ea
WHERE ea.[EmployeeId] = @EmployeeId 
AND MONTH(ea.[AttendanceDate]) = @ReportMonth 
AND YEAR(ea.[AttendanceDate]) = @ReportYear 
AND ea.[Status] = 'Leave';

-- Print the report
PRINT 'Employee Attendance Report for Employee Id: ' + CAST(@EmployeeId AS VARCHAR);
PRINT 'Report Month: ' + CAST(@ReportMonth AS VARCHAR) + '/' + CAST(@ReportYear AS VARCHAR);
PRINT 'Total Working Days: ' + CAST(@TotalDays AS VARCHAR);
PRINT 'Days Present: ' + CAST(@PresentDays AS VARCHAR);
PRINT 'Days Absent: ' + CAST(@AbsentDays AS VARCHAR);
PRINT 'Days on Leave: ' + CAST(@LeaveDays AS VARCHAR);