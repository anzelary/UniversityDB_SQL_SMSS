-- Create table for Lecturers
CREATE TABLE Lecturers (
    LecturerID VARCHAR(10) PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DepartmentID VARCHAR(10) NOT NULL,
    HireDate DATE NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO Lecturers (LecturerID, FirstName, LastName, DepartmentID, HireDate) 
VALUES
    ('L201', 'Emma', 'Wilson', 'D1', '2018-09-01'),
    ('L202', 'Robert', 'Hughes', 'D2', '2015-01-15'),
    ('L203', 'Olivia', 'Brown', 'D3', '2019-06-20'),
    ('L204', 'Michael', 'Evans', 'D4', '2017-03-10'),
    ('L205', 'Sophia', 'Turner', 'D1', '2020-02-12'),
    ('L206', 'Liam', 'Anderson', 'D1', '2016-05-18'),
    ('L207', 'Grace', 'Mitchell', 'D2', '2014-11-25'),
    ('L208', 'Henry', 'Walker', 'D3', '2021-01-05'),
    ('L209', 'Chloe', 'Roberts', 'D4', '2018-08-14'),
    ('L210', 'Ethan', 'Bennett', 'D2', '2019-09-09'),
    ('L211', 'Ava', 'Phillips', 'D3', '2020-06-01'),
    ('L212', 'Noah', 'Campbell', 'D4', '2017-12-03');
