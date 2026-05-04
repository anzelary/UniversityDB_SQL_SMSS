-- Create table for University Departments
CREATE TABLE Departments (
    DepartmentID VARCHAR(10) PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL,
    FacultyName VARCHAR(100) NOT NULL
);

INSERT INTO Departments (DepartmentID, DepartmentName, FacultyName) 
VALUES
    ('D1', 'Computer Science', 'Engineering'),
    ('D2', 'Business Management', 'Business'),
    ('D3', 'Psychology', 'Social Sciences'),
    ('D4', 'Mathematics', 'Science');
