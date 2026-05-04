--11 . For each course, show the percentage of students who passed (Grade ≥ 3).
-- Conditional aggregation

SELECT 
    c.CourseName,
    COUNT(e.EnrolmentID) AS TotalStudents,
    SUM(CASE WHEN gs.GradePoints >= 3 THEN 1 ELSE 0 END) AS PassedStudents,
    ROUND(
        CASE
            WHEN COUNT(e.EnrolmentID) = 0 THEN 0
            ELSE    100.0 * SUM(CASE WHEN gs.GradePoints >= 3 THEN 1 ELSE 0 END) 
                    / CAST(COUNT(e.EnrolmentID) AS FLOAT)
        END, 
        2) AS PassPercentage
FROM Courses c
JOIN CourseOffering co ON co.CourseID = c.CourseID
LEFT JOIN Enrolments e ON e.OfferingID = co.OfferingID
LEFT JOIN GradeScale gs ON gs.Grade = e.FinalGrade
GROUP BY c.CourseName;
