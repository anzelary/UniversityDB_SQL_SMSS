
-- 09 . List all lecturers who teach more than one course.
--09.1 within all  courses (e.g. “Computer Science” in 2025 and 2026 will be counted as 2)
SELECT 
    l.FirstName, 
    l.LastName,
    COUNT(co.CourseID) AS NumberOfCourses
FROM Lecturers l
LEFT JOIN CourseOffering co
    ON l.LecturerID = co.LecturerID
GROUP BY
   l.FirstName, 
   l.LastName
HAVING COUNT(co.CourseID) > 1;

-- 09.2 only distinct CourseNames (e.g. “Computer Science will be counted once)
SELECT 
    l.LecturerID,
    l.FirstName, 
    l.LastName,
    COUNT(DISTINCT co.CourseID) AS 'NumberOfCourses(Distinct)'
FROM Lecturers l
LEFT JOIN CourseOffering co
    ON l.LecturerID = co.LecturerID
GROUP BY
   l.LecturerID,
   l.FirstName, 
   l.LastName
HAVING COUNT(DISTINCT co.CourseID) > 1;

