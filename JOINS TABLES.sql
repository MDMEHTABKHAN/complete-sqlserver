
USE TEST;
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Country VARCHAR(50)
);



CREATE TABLE Orders_1(
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    Amount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);


INSERT INTO Customer(CustomerID, CustomerName, Country)
VALUES
(1, 'John Doe', 'USA'),
(2, 'Jane Smith', 'UK'),
(3, 'Ali Khan', 'India'),
(4, 'Maria Garcia', 'Spain'),
(5, 'Lamine Yamal', 'Spain'),
(6, 'Mehtab Khan', 'India'),
(7, 'Harry Kane', 'UK'),
(8, 'Lionel Messi', 'Argentina');


INSERT INTO Orders_1 VALUES
(101, 1, '2024-12-01', 250.30),
(102, 1, '2024-12-05', 450.20),
(103, 2, '2024-12-02', 300.50),
(104, 5, '2024-12-03', 100.00),
(105, 6, '2022-01-04', 102.25);




SELECT * FROM Customer;
SELECT * FROM Orders_1;

DROP TABLE Customer;
DROP TABLE Orders_1;