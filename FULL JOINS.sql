
--  *** FULL JOIN OR FULL OUTER JOIN *** 


SELECT *
FROM Customer
FULL JOIN Orders_1 
ON Customer.CustomerID = Orders_1.CustomerID;


SELECT Customer.CustomerName, Orders_1.OrderID, Orders_1.Amount
FROM Customer
FULL OUTER JOIN Orders_1 
ON Customer.CustomerID = Orders_1.CustomerID
WHERE Orders_1.Amount > 200 OR Orders_1.Amount IS NULL
ORDER BY Orders_1.Amount DESC;



SELECT Customer.CustomerName, Customer.Country, Orders_1.OrderDate
FROM Customer
FULL OUTER JOIN Orders_1 
ON Customer.CustomerID = Orders_1.CustomerID
WHERE Customer.Country LIKE 'I%' OR Customer.Country IS NULL
ORDER BY Customer.CustomerName;



SELECT Customer.Country, COUNT(Orders_1.OrderID) AS TotalOrders
FROM Customer
FULL OUTER JOIN Orders_1 
ON Customer.CustomerID = Orders_1.CustomerID
GROUP BY Customer.Country;




SELECT Customer.Country, SUM(Orders_1.Amount) AS TotalAmount
FROM Customer
FULL OUTER JOIN Orders_1 
ON Customer.CustomerID = Orders_1.CustomerID
GROUP BY Customer.Country
HAVING SUM(Orders_1.Amount) > 100;


SELECT Orders_1.*
FROM Customer
FULL OUTER JOIN Orders_1 
ON Customer.CustomerID = Orders_1.CustomerID
WHERE Customer.CustomerID IS NULL;


SELECT Customer.*
FROM Customer
FULL OUTER JOIN Orders_1 
ON Customer.CustomerID = Orders_1.CustomerID
WHERE Orders_1.OrderID IS NULL;



SELECT ISNULL(Customer.Country, 'Unknown') AS Country, SUM(ISNULL(Orders_1.Amount, 0)) AS TotalAmount
FROM Customer
FULL OUTER JOIN Orders_1 
ON Customer.CustomerID = Orders_1.CustomerID
GROUP BY Customer.Country
ORDER BY TotalAmount DESC;











--  ***   CROSS JOIN   ***

SELECT c.CustomerName, o.OrderID
FROM Customer c
CROSS JOIN Orders_1 o;

SELECT c.CustomerName, o.OrderID, c.Country
FROM Customer c
CROSS JOIN Orders_1 o
WHERE Country = 'India';

