-- 01. Show all courses in Spring 2025 along with the lecturers and course capacity.

SELECT Semester,
      c.CourseName,
      CONCAT (l.FirstName, ' ',l.LastName) AS LecturerFullName,
      Capacity
  FROM CourseOffering co
  LEFT JOIN Courses c ON co.CourseID = c.CourseID
  LEFT JOIN Lecturers l ON co.LecturerID = l.LecturerID
  WHERE co.Semester = '2025-Spring';
