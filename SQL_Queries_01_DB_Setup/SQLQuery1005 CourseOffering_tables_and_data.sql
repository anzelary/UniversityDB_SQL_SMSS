USE UniversityDB
GO


-- Create table for Courses offered in each term
CREATE TABLE CourseOffering (
    OfferingID VARCHAR(10)  PRIMARY KEY,
    CourseID VARCHAR(10) NOT NULL,
    LecturerID VARCHAR(10) NOT NULL,
    Semester VARCHAR(20) NOT NULL,
    Capacity INT CHECK (Capacity > 0),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID),
    FOREIGN KEY (LecturerID) REFERENCES Lecturers(LecturerID)
);


INSERT INTO CourseOffering (OfferingID, CourseID, LecturerID, Semester, Capacity) VALUES
-- Autumn 2024
('CO4001','C301','L201','2024-Autumn',40),
('CO4002','C302','L205','2024-Autumn',35),
('CO4003','C303','L206','2024-Autumn',40),
('CO4004','C304','L201','2024-Autumn',35),
('CO4005','C305','L204','2024-Autumn',30),
('CO4006','C306','L209','2024-Autumn',30),
('CO4007','C307','L202','2024-Autumn',50),
('CO4008','C308','L207','2024-Autumn',45),
('CO4009','C309','L203','2024-Autumn',45),
('CO4010','C310','L211','2024-Autumn',40),
-- Spring 2025
('CO4011','C301','L205','2025-Spring',45),
('CO4012','C302','L201','2025-Spring',40),
('CO4013','C303','L206','2025-Spring',45),
('CO4014','C304','L205','2025-Spring',40),
('CO4015','C305','L212','2025-Spring',35),
('CO4016','C306','L209','2025-Spring',35),
('CO4017','C307','L210','2025-Spring',55),
('CO4018','C308','L207','2025-Spring',50),
('CO4019','C309','L208','2025-Spring',50),
('CO4020','C310','L211','2025-Spring',45),
-- Autumn 2025
('CO4021','C301','L201','2025-Autumn',40),
('CO4022','C302','L205','2025-Autumn',35),
('CO4023','C303','L206','2025-Autumn',40),
('CO4024','C304','L205','2025-Autumn',35),
('CO4025','C305','L212','2025-Autumn',30),
('CO4026','C306','L209','2025-Autumn',30),
('CO4027','C307','L202','2025-Autumn',50),
('CO4028','C308','L210','2025-Autumn',45),
('CO4029','C309','L203','2025-Autumn',45),
('CO4030','C310','L211','2025-Autumn',40); 

