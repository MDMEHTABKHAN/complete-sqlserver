

SELECT * FROM Customers ORDER BY FirstName ASC;


SELECT * FROM Customers ORDER BY CreatedAt DESC;


SELECT * FROM Customers ORDER BY Country, City;


SELECT * FROM Customers ORDER BY LEN(FirstName) DESC;


SELECT * FROM Customers ORDER BY FirstName, LastName;


SELECT FirstName, LastName, Email, City, Country
FROM Customers
WHERE City IN ('Pune', 'Kolkata')
ORDER BY City;


SELECT  FirstName, Email, city
FROM Customers WHERE city LIKE 'K%'
ORDER BY FirstName;




SELECT COUNT(*) FROM Customers;


SELECT MIN(CreatedAt) AS FirstCustomer FROM Customers;


SELECT MAX(CreatedAt) AS LatestCustomer FROM Customers;


SELECT COUNT(DISTINCT Country) AS UniqueCountries FROM Customers;


SELECT AVG(LEN(FirstName)) AS AvgFirstNameLength FROM Customers;


SELECT SUM(LEN(Phone)) AS TotalDigits FROM Customers;


SELECT COUNT(Email) AS EmailsPresent FROM Customers;


SELECT COUNT(*) AS CustomersInIndia FROM Customers WHERE Country = 'India';


SELECT COUNT(*) AS CustomersWithoutPhone FROM Customers WHERE Phone IS NULL;



SELECT COUNT(*) AS GmailUsers 
FROM Customers WHERE Email LIKE '%@gmail.com';




SELECT Country, COUNT(*) AS Total FROM Customers GROUP BY Country;


SELECT City, COUNT(*) AS Customers FROM Customers GROUP BY City ORDER BY Customers DESC;


SELECT Country, COUNT(*) AS Total FROM Customers GROUP BY Country HAVING COUNT(*) > 3;


SELECT Country, MAX(CreatedAt) AS LastJoined FROM Customers GROUP BY Country;


SELECT Country, COUNT(*) AS Total FROM Customers GROUP BY Country HAVING COUNT(*) BETWEEN 2 AND 5;
