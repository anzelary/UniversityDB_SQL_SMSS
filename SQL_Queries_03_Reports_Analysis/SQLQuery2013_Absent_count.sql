-- 13. Find students who have more than 2 absences across all weeks.

SELECT
    s.StudentID,
    CONCAT(s.FirstName, ' ', s.LastName),
    SUM(CASE WHEN a.Status = 'Absent' THEN 1 ELSE 0 END) AS AbsentCount
FROM Students s
LEFT JOIN Enrolments e
    ON s.StudentID = e.StudentID
LEFT JOIN Attendance a
    ON e.EnrolmentID = a.EnrolmentID

GROUP BY 
    s.StudentID, s.FirstName, s.LastName

HAVING SUM(CASE WHEN a.Status = 'Absent' THEN 1 ELSE 0 END) > 2

ORDER BY 
    AbsentCount DESC;