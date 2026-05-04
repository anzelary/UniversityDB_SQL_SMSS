-- 10. Show courses assigned to lecturer Emma Wilson
SELECT
    l.FirstName,
    l.LastName,
    co.Semester,
    c.CourseName
FROM Lecturers l
LEFT JOIN CourseOffering co
    ON l.LecturerID = co.LecturerID
LEFT JOIN Courses c
    ON co.courseID = c.CourseID
WHERE l.FirstName = 'Emma' AND l.LastName = 'Wilson';
 
