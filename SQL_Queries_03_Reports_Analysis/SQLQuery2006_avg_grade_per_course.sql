--06. Display the average grade per course.
SELECT
    c.CourseName,
    CASE 
        WHEN AVG(
            CASE
                WHEN FinalGrade = 'A' THEN 4
                WHEN FinalGrade = 'B' THEN 3
                WHEN FinalGrade = 'C' THEN 2
                WHEN FinalGrade = 'D' THEN 1
                WHEN FinalGrade = 'F' THEN 0
            END
        ) > 3.5 THEN 'A'
        WHEN AVG(
            CASE
                WHEN FinalGrade = 'A' THEN 4
                WHEN FinalGrade = 'B' THEN 3
                WHEN FinalGrade = 'C' THEN 2
                WHEN FinalGrade = 'D' THEN 1
                WHEN FinalGrade = 'F' THEN 0
            END
        ) > 2.5 THEN 'B'
        WHEN AVG(
            CASE
                WHEN FinalGrade = 'A' THEN 4
                WHEN FinalGrade = 'B' THEN 3
                WHEN FinalGrade = 'C' THEN 2
                WHEN FinalGrade = 'D' THEN 1
                WHEN FinalGrade = 'F' THEN 0
            END
        ) > 1.5 THEN 'C'
        WHEN AVG(
            CASE
                WHEN FinalGrade = 'A' THEN 4
                WHEN FinalGrade = 'B' THEN 3
                WHEN FinalGrade = 'C' THEN 2
                WHEN FinalGrade = 'D' THEN 1
                WHEN FinalGrade = 'F' THEN 0
            END
        ) > 0.5 THEN 'D'
        ELSE 'F'
    END AS AverageGrade
FROM Enrolments e
LEFT JOIN CourseOffering co 
    ON e.OfferingID = co.OfferingID
LEFT JOIN Courses c 
    ON co.CourseID = c.CourseID
GROUP BY c.CourseName;
