-- Create table for academic terms (semesters)
CREATE TABLE Terms (
    TermID      VARCHAR(10)  NOT NULL PRIMARY KEY,
    Year        INT          NOT NULL,
    Term        VARCHAR(20)  NOT NULL,
    Semester    VARCHAR(30)  NOT NULL
);

INSERT INTO Terms (TermID, Year, Term, Semester)
VALUES 
    ('T001', 2024, 'Autumn', '2024-Autumn'),
    ('T002', 2025, 'Spring', '2025-Spring'),
    ('T003', 2025, 'Autumn', '2025-Autumn'),
    ('T004', 2026, 'Spring', '2026-Spring'),
    ('T005', 2026, 'Autumn', '2026-Autumn');


-- Create table for academic grades
CREATE TABLE GradeScale (
    Grade VARCHAR(2) PRIMARY KEY,
    GradePoints INT NOT NULL
);

INSERT INTO GradeScale (Grade, GradePoints)
VALUES
('A', 4),
('B', 3),
('C', 2),
('D', 1),
('F', 0);

