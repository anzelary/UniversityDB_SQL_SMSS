-- 04. List students who are enrolled in more than 3 courses.

SELECT 
     s.StudentID,
     CONCAT(s.FirstName,  ' ', s.LastName) AS StudentFullName,
     COUNT(e.OfferingID) AS NumberOfCourses
FROM Enrolments e
LEFT JOIN Students s 
     ON e.StudentID = s.StudentID
GROUP BY 
    s.StudentID,
    s.FirstName, 
    s.LastName
HAVING COUNT(e.OfferingID) > 3
ORDER BY NumberOfCourses DESC;
