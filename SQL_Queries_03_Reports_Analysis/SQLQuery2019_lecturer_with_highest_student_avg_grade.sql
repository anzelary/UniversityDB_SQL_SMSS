USE UniversityDB
GO

--19. Find the lecturer whose courses have the highest average student grade.

WITH LecturerAverages AS (
    SELECT
        l.LecturerID,
        l.FirstName,
        l.LastName,
        AVG(g.GradePoints) AS AvgGrade
    FROM Lecturers l
    JOIN CourseOffering co
        ON l.LecturerID = co.LecturerID
    JOIN Courses c
        ON co.CourseID = c.CourseID
    JOIN Enrolments e
        ON e.OfferingID = co.OfferingID
    JOIN GradeScale g
        ON g.Grade = e.FinalGrade
    GROUP BY
        l.LecturerID,
        l.FirstName,
        l.LastName
)
SELECT TOP 1
    LecturerID,
    FirstName,
    LastName,
    AvgGrade
FROM LecturerAverages
ORDER BY AvgGrade DESC;
