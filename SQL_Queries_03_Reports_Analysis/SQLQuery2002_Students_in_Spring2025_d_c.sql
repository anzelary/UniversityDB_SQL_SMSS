-- 02. List all students in 2025-Spring with their full name and the department they belong to.

  SELECT CONCAT (s.FirstName, ' ', s.LastName) AS StudentFullName
       , d.DepartmentName
       , c.CourseName
  FROM Enrolments e
  LEFT JOIN Students s ON e.StudentID = s.StudentID
  LEFT JOIN CourseOffering co ON e.OfferingID = co.OfferingID
  LEFT JOIN Courses c ON co.CourseID = c.CourseID
  LEFT JOIN Departments d ON c.DepartmentID = d.DepartmentID 
  WHERE co.Semester = '2025-Spring'
  ORDER BY StudentFullName;
