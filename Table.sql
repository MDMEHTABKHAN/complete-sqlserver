

CREATE TABLE student(
StudentID INT,
Name VARCHAR(70),
ge INT
);

INSERT INTO student(StudentID, Name)
VALUES
(1, 'AMIT KUMAR'),
(2, 'RAHUL KUMAR'),
(4, 'RAHUL SINGH');


INSERT INTO student VALUES(5, 'mehtab');

INSERT INTO student(studentID, Name) 
VALUES
(10, 'Shyam'),
(11, 'Arbaj');



CREATE TABLE Student_1(
StudentID INT PRIMARY KEY,
Name VARCHAR(100) NOT NULL,
Age INT CHECK (Age >= 18),
Email VARCHAR(40) UNIQUE,
CreatedAt DATETIME DEFAULT GETDATE()
);



INSERT INTO Student_1(StudentID, Name, Age, Email)
VALUES
(1, 'Mehtab Khan', 23, 'mdmehtab12@gmail.com'),
(2, 'Shyam Khan', 27, 'shyamkhan23@gmail.com');





CREATE TABLE Departments(
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES 
      (1, 'Human Resources'),
      (2, 'Finance'),
      (3, 'Engineering'),
      (4, 'Marketing');

CREATE TABLE Employees(
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    DepartmentID INT,
	FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);


INSERT INTO Employees (EmployeeID, Name, DepartmentID)
VALUES 
(101, 'Alice Johnson', 1),
(102, 'Bob Smith', 2),
(103, 'Charlie Lee', 3),
(104, 'Diana White', 3),
(105, 'Ethan Brown', 4);


CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Amount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);


INSERT INTO Customers (CustomerID, CustomerName, Email, Phone)
VALUES
(1, 'John Doe', 'john@example.com', '1234567890'),
(2, 'Jane Smith', 'jane@example.com', '2345678901'),
(3, 'Robert Brown', 'robert@example.com', '3456789012');


INSERT INTO Orders (OrderID, CustomerID, OrderDate, Amount)
VALUES
(1001, 1, '2025-05-01', 250.00),
(1002, 2, '2025-05-03', 450.50),
(1003, 1, '2025-05-05', 120.75),
(1004, 3, '2025-05-10', 300.00);



CREATE TABLE CourseRegistrations (
    StudentID INT,
    CourseID INT,
    RegistrationDate DATE,
    PRIMARY KEY (StudentID, CourseID)
);


INSERT INTO CourseRegistrations(StudentID,CourseID,RegistrationDate)
VALUES
(101, 501, '2025-01-15'),
(102, 502, '2025-01-16'),
(103, 501, '2025-01-17'),
(101, 503, '2025-01-18'),
(104, 504, '2025-01-19'),
(102, 503, '2025-01-20');



CREATE TABLE Categories (
    CategoryID INT IDENTITY(1,1) PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL
);


INSERT INTO Categories (CategoryName)
VALUES 
('Electronics'),
('Books'),
('Clothing'),
('Home & Kitchen'),
('Toys'),
('Sports & Outdoors');








