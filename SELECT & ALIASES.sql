SELECT * FROM Customers;


SELECT FirstName, LastName FROM Customers;


SELECT FirstName + ' ' + LastName AS FullName FROM Customers;

SELECT UPPER(FirstName + ' ' + LastName) AS FullName FROM Customers;

SELECT LEN(UPPER(FirstName + ' ' + LastName)) AS FullName FROM Customers;


SELECT Email AS CustomerEmail FROM Customers;

SELECT DISTINCT Country FROM Customers;

SELECT TOP 5 * FROM Customers;

SELECT COUNT(*) AS TotalCustomers FROM Customers;

SELECT FirstName AS [First Name], City AS Location FROM Customers;


SELECT LEN(FirstName) AS FirstNameLength FROM Customers;


SELECT UPPER(FirstName) AS UpperCaseName FROM Customers;

