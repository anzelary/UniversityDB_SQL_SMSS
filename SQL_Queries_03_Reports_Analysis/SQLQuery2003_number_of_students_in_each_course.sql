-- 03. Find the number of students enrolled in each course.

SELECT 
       co.Semester,
       c.CourseName,
       COUNT(e.StudentID) AS NumberOfStudents
  FROM Enrolments AS e
  LEFT JOIN CourseOffering co 
       ON  e.OfferingID = co.OfferingID
  LEFT JOIN Courses c 
       ON co.CourseID = c.CourseID
  GROUP BY co.Semester, c.CourseName
  ORDER BY co.Semester, c.CourseName;
