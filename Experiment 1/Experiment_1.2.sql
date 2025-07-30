CREATE TABLE Employees(
  EmpID INT PRIMARY KEY,
  EName VARCHAR(50),
  Department VARCHAR(50),
  ManagerID INT 
);



ALTER TABLE Employees ADD CONSTRAINT fKey FOREIGN KEY(ManagerID) REFERENCES Employees(EmpID);



INSERT INTO Employees VALUES (1,'Akshat', 'CSE', NULL), 
                             (2,'Vaibhav', 'ECE', 1), 
                             (3,'Gopal', 'CSE', 1), 
                             (4,'Ram', 'EE', 3), 
                             (5,'Geeta', 'ME', 2), 
                             (6,'Naman', 'ECE', 3);


SELECT A.Ename AS [Employee Name], B.EName AS [Manager Name]
FROM Employees AS A
LEFT OUTER JOIN
Employees AS B
ON 
A.ManagerID = B.EmpID;