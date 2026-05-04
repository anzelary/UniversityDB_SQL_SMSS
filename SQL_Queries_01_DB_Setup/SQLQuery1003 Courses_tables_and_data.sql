-- Create table for all University Courses

CREATE TABLE Courses (
    CourseID VARCHAR(10) PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    Credits INT CHECK (Credits > 0),
    DepartmentID VARCHAR(10) NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);


INSERT INTO Courses (CourseID, CourseName, Credits, DepartmentID) VALUES
('C301', 'Database Systems', 4, 'D1'),
('C302', 'Algorithms', 4, 'D1'),
('C303', 'Financial Mathematics', 3, 'D4'),
('C304', 'Operating Systems', 3, 'D1'),
('C305', 'Linear Algebra', 4, 'D4'),
('C306', 'Statistics', 3, 'D2'),
('C307', 'Marketing Principles', 4, 'D2'),
('C308', 'Business Analytics', 4, 'D2'),
('C309', 'Cognitive Psychology', 3, 'D3'),
('C310', 'Counselling Psychology', 3, 'D3');
