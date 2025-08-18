CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(100) NOT NULL
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL,
    DeptID INT FOREIGN KEY REFERENCES Departments(DeptID)
);


INSERT INTO Departments (DeptID,DeptName) VALUES
(1,'Computer Science'),
(2,'Mechanical'),
(3,'Civil'),
(4,'Electrical'),
(5,'Mechatronics');


INSERT INTO Courses (CourseID, CourseName, DeptID) VALUES
(101,'Data Structures', 1),
(102,'DBMS', 1),
(103,'Operating System', 1),
(104,'Fluid Mechanics', 2),
(105,'Workshop', 2),
(106,'Highway Engineering', 3),
(107,'RCC', 3),
(108,'Digital Electronics', 4),
(109,'Alternating Current', 4),
(110,'Robotics', 5),
(111,'AI', 5);


SELECT d.DeptName,
       (SELECT COUNT(*) 
        FROM Courses c 
        WHERE c.DeptID = d.DeptID) AS CourseCount
FROM Departments d;

SELECT d.DeptName
FROM Departments d
WHERE (SELECT COUNT(*) 
       FROM Courses c 
       WHERE c.DeptID = d.DeptID) > 2;
