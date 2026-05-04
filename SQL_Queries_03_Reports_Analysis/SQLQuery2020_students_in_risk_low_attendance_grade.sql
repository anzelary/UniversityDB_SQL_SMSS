USE UniversityDB
GO


WITH AttendanceRate AS (
    SELECT
        s.StudentID,
        COUNT(a.AttendanceID) AS TotalSessions,
        SUM(CASE WHEN a.Status = 'Present' THEN 1 ELSE 0 END) AS PresentCount,
        CAST(SUM(CASE WHEN a.Status = 'Present' THEN 1 ELSE 0 END) AS FLOAT)
            / NULLIF(COUNT(a.AttendanceID), 0) AS AttendancePct
    FROM Students s
    JOIN Enrolments e ON e.StudentID = s.StudentID
    JOIN Attendance a ON a.EnrolmentID = e.EnrolmentID
    GROUP BY s.StudentID
),
StudentGPA AS (
    SELECT
        s.StudentID,
        AVG(g.GradePoints) AS GPA
    FROM Students s
    JOIN Enrolments e ON e.StudentID = s.StudentID
    JOIN GradeScale g ON g.Grade = e.FinalGrade
    GROUP BY s.StudentID
)
SELECT
    s.StudentID,
    s.FirstName,
    s.LastName,
    ar.AttendancePct,
    sg.GPA
FROM Students s
JOIN AttendanceRate ar ON ar.StudentID = s.StudentID
JOIN StudentGPA sg ON sg.StudentID = s.StudentID
WHERE ar.AttendancePct < 0.70   -- low attendance threshold
  AND sg.GPA < 2.0              -- low GPA threshold
ORDER BY sg.GPA, ar.AttendancePct;
