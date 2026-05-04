USE UniversityDB
GO

-- 17. Show the weekly attendance summary for each course (Present/Late/Absent counts).

SELECT
    c.CourseID,
    c.CourseName,
    a.WeekNumber,
    SUM(CASE WHEN a.Status = 'Present' THEN 1 ELSE 0 END) AS PresentCount,
    SUM(CASE WHEN a.Status = 'Late' THEN 1 ELSE 0 END) AS LateCount,
    SUM(CASE WHEN a.Status = 'Absent' THEN 1 ELSE 0 END) AS AbsentCount
FROM Courses c
JOIN CourseOffering co 
    ON co.CourseID = c.CourseID
JOIN Enrolments e 
    ON e.OfferingID = co.OfferingID
JOIN Attendance a 
    ON a.EnrolmentID = e.EnrolmentID
GROUP BY
    c.CourseID,
    c.CourseName,
    a.WeekNumber
ORDER BY
    c.CourseID,
    a.WeekNumber;
