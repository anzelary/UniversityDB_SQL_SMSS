--14. Show the most popular course based on total Enrolments.

SELECT TOP 1
    c.CourseName,
    COUNT(e.EnrolmentID) AS NumberOfEnrolments
FROM Enrolments e
LEFT JOIN CourseOffering co
    ON e.OfferingID = co.OfferingID
LEFT JOIN Courses c
    ON co.CourseID = c.CourseID
GROUP BY c.CourseName
ORDER BY NumberOfEnrolments DESC;
