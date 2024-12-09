CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);
select * from Departments;
CREATE TABLE EmployeesNew (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
   DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES 
(1, 'Human Resources'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing');
savepoint one;
INSERT INTO EmployeesNew (EmployeeID, Name, DepartmentID)
VALUES
(101, 'Alice', 1),
(102, 'Bob', 2),
(103, 'Charlie', 3),
(104, 'Diana', 4);
select * from EmployeesNew;
select * from Departments;

truncate table EmployeesNew;
delete from EmployeesNew where EmployeeID=103;
delete from EmployeesNew;
delete from EmployeesNew where Name('bob');
rollback to savepoint one;



