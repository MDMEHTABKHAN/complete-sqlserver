

--   ***   RIGHT JOIN  *** 

SELECT * FROM Customer;
SELECT * FROM Orders_1;
SELECT * 
FROM Customer
RIGHT JOIN Orders_1
ON Customer.CustomerID = Orders_1.CustomerID;


SELECT c.CustomerName, c.Country, o.Amount
FROM Customer c
RIGHT JOIN Orders_1 o
ON c.CustomerID = o.CustomerID;


SELECT c.CustomerName, c.Country, o.OrderDate, o.Amount
FROM Customer c
RIGHT JOIN Orders_1 o
ON c.CustomerID = o.CustomerID
WHERE o.Amount > 200
ORDER BY o.Amount DESC;


SELECT c.CustomerName, c.Country, o.OrderDate, o.Amount
FROM Customer c
RIGHT JOIN Orders_1 o
ON c.CustomerID = o.CustomerID
WHERE c.CustomerName LIKE 'M%'
ORDER BY o.OrderDate;



SELECT c.Country, SUM(o.Amount) AS TotalAmount
FROM Customer c
RIGHT JOIN Orders_1 o
ON c.CustomerID = o.CustomerID
GROUP BY c.Country
ORDER BY TotalAmount DESC;



SELECT c.Country, COUNT(o.OrderID) AS OrderCount
FROM Customer c
RIGHT JOIN Orders_1 o
ON c.CustomerID = o.CustomerID
GROUP BY c.Country
HAVING COUNT(o.OrderID) > 1;



SELECT c.CustomerName, o.Amount
FROM Customer c
RIGHT JOIN Orders_1 o
ON c.CustomerID = o.CustomerID
WHERE c.Country LIKE '%a'  -- ends with 'a'
ORDER BY o.Amount DESC;


SELECT c.CustomerName, COUNT(o.OrderID) AS TotalOrders
FROM Customer c
RIGHT JOIN Orders_1 o
ON c.CustomerID = o.CustomerID
WHERE o.OrderDate >= '2022-01-01'
GROUP BY c.CustomerName
HAVING COUNT(o.OrderID) >= 1;



SELECT ISNULL(c.Country, 'Unknown') AS Country, SUM(o.Amount) AS TotalSales
FROM Customer c
RIGHT JOIN Orders_1 o
ON c.CustomerID = o.CustomerID
GROUP BY c.Country
ORDER BY TotalSales DESC;




