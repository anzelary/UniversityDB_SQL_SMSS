--07. Find the top 10 students with the highest average grade across all their courses.
SELECT TOP 10
    e.StudentID,
    s.FirstName, 
    s.LastName,
    AVG(g.GradePoints) AS AvgGradePoints,
    CASE 
        WHEN AVG(g.GradePoints) >= 3.5 THEN 'A'
        WHEN AVG(g.GradePoints) >= 2.5 THEN 'B'
        WHEN AVG(g.GradePoints) >= 1.5 THEN 'C'
        WHEN AVG(g.GradePoints) >= 0.5 THEN 'D'
        ELSE 'F'
    END AS AvgGrade
FROM Enrolments e
LEFT JOIN Students s 
    ON e.StudentID = s.StudentID
LEFT JOIN GradeScale g
    ON e.FinalGrade = g.Grade
GROUP BY
    e.StudentID,
    s.FirstName, 
    s.LastName
ORDER BY AvgGradePoints DESC;
