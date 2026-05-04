-- 05. Show the total number of courses offered by each department.

SELECT 
    d.DepartmentName, 
    COUNT(c.CourseID) AS NumberOfCourses
FROM Departments d
LEFT JOIN Courses c 
    ON d.DepartmentID = c.DepartmentID
GROUP BY
    d.DepartmentName;
