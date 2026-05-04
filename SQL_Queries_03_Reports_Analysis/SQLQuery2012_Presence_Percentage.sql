--12. Show the attendance rate (Present %) for each student

SELECT
    s.StudentID,
    CONCAT(s.FirstName, ' ', s.LastName),
    COUNT(a.AttendanceID) AS TotalSessions,
    SUM(CASE WHEN a.Status = 'Present' THEN 1 ELSE 0 END) AS PresentCount,
    ROUND(
        100.0 * SUM(CASE WHEN a.Status = 'Present' THEN 1 ELSE 0 END)
        / NULLIF(COUNT(a.AttendanceID), 0)
    , 2) AS PresentPercentage
FROM Students s
LEFT JOIN Enrolments e
    ON s.StudentID = e.StudentID
LEFT JOIN Attendance a
    ON e.EnrolmentID = a.EnrolmentID

GROUP BY 
    s.StudentID, s.FirstName, s.LastName

-- code to filter students by present percentage (less then 70%):
HAVING 100.0 * SUM(CASE WHEN a.Status = 'Present' THEN 1 ELSE 0 END) 
     / NULLIF(COUNT(a.AttendanceID), 0) < 70.0

ORDER BY 
    PresentPercentage DESC;

    