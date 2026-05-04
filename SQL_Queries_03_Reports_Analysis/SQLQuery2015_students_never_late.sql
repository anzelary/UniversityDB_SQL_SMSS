-- 15. List all students who have never been late (no 'Late' status).

USE UniversityDB
GO

-- Option 1 Using anti-join 
SELECT DISTINCT
    s.StudentID,
    s.FirstName, 
    s.LastName
FROM Students s
LEFT JOIN Enrolments e
    ON s.StudentID = e.StudentID
LEFT JOIN Attendance a
    ON e.EnrolmentID = a.AttendanceID
    AND a.Status = 'Late'
WHERE a.AttendanceID IS NULL;


-- Option 2 using NOT EXISTS

SELECT
    s.StudentID,
    s.FirstName, 
    s.LastName
FROM Students s
WHERE NOT EXISTS (
    SELECT 1
    FROM Enrolments e
    JOIN Attendance a ON e.EnrolmentID = a.EnrolmentID
    WHERE e.StudentID = s.StudentID
      AND a.Status = 'Late'
);
