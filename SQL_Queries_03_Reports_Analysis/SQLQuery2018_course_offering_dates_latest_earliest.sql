USE UniversityDB
GO

--18. Show the earliest and latest course offering dates for each course..
/* 
NOTE:
This query depends on CourseOfferings having StartDate and EndDate columns.
These columns do NOT exist yet in the current schema.
The table will be updated later, and this query will work once those columns are added.
*/

SELECT
    c.CourseID,
    c.CourseName,
    MIN(co.StartDate) AS EarliestOffering, 
    MAX(co.EndDate) AS LatestOffering
FROM Courses c
JOIN CourseOffering co
    ON co.CourseID = c.CourseID
GROUP BY
    c.CourseID,
    c.CourseName
ORDER BY
    c.CourseID;

