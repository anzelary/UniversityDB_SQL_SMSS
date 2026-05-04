USE UniversityDB
GO

-- 16. For each department, show the highest performing student (by average grade).

WITH StudentAverages AS (
    SELECT
        s.StudentID,
        s.FirstName,
        s.LastName,
        s.DepartmentID,
        AVG(g.GradePoints) AS AvgGrade
    FROM Students s
    JOIN Enrolments e ON e.StudentID = s.StudentID
    JOIN GradeScale g ON g.Grade = e.FinalGrade
    GROUP BY
        s.StudentID,
        s.FirstName,
        s.LastName,
        s.DepartmentID
),
Ranked AS (
    SELECT
        sa.*,
        ROW_NUMBER() OVER (
            PARTITION BY sa.DepartmentID
            ORDER BY sa.AvgGrade DESC
        ) AS rn
    FROM StudentAverages sa
)
SELECT
    DepartmentID,
    StudentID,
    FirstName,
    LastName,
    AvgGrade
FROM Ranked
WHERE rn = 1
ORDER BY DepartmentID;