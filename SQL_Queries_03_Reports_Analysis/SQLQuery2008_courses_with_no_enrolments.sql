-- 08. Show all courses that have no students enrolled.
 
SELECT 
    c.CourseID,
    c.CourseName,
    co.Semester
FROM Courses c
LEFT JOIN CourseOffering co
    ON c.CourseID = co.CourseID
LEFT JOIN Enrolments e
    ON co.OfferingID = e.OfferingID
WHERE e.EnrolmentID IS NULL
ORDER BY c.CourseID;

