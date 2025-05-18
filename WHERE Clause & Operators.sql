


 SELECT * FROM Customers WHERE Country = 'India';


SELECT * FROM Customers WHERE City <> 'Delhi';


SELECT * FROM Customers WHERE Country IN ('India', 'USA', 'UK');


SELECT * FROM Customers WHERE Country NOT IN ('USA');


SELECT * FROM Customers WHERE CreatedAt > '2024-01-01';


SELECT * FROM Customers WHERE CreatedAt BETWEEN '2024-01-01' AND '2025-01-01';


SELECT * FROM Customers WHERE Phone IS NULL;


SELECT * FROM Customers WHERE Phone IS NOT NULL;


SELECT * FROM Customers WHERE FirstName = 'John' AND Country = 'India';


SELECT * FROM Customers WHERE Country = 'India' OR Country = 'USA';
