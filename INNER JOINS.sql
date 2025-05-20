
			   
--  ***  INNER JOIN  ***

SELECT * 
FROM Customer
INNER JOIN Orders_1
ON Customer.CustomerID = Orders_1.CustomerID;


SELECT c.CustomerName, c.Country, o.OrderDate, o.Amount
FROM Customer c
INNER JOIN Orders_1 o
ON c.CustomerID = o.CustomerID;


SELECT c.CustomerName, c.Country, o.OrderDate, o.Amount
FROM Customer c
INNER JOIN Orders_1 o
ON c.CustomerID = o.CustomerID
WHERE c.Country IN ('India', 'Spain');


SELECT c.CustomerName, c.Country, o.OrderDate, o.Amount
FROM Customer c
INNER JOIN Orders_1 o
ON c.CustomerID = o.CustomerID
WHERE c.Country IN ('India', 'Spain')
ORDER BY c.Country ASC;

SELECT c.CustomerName, c.Country, o.OrderDate, o.Amount
FROM Customer c
INNER JOIN Orders_1 o
ON c.CustomerID = o.CustomerID
WHERE c.Country IN ('India', 'Spain') AND o.Amount > 100
ORDER BY c.Country ASC;



SELECT 
    c.Country,
    COUNT(o.OrderID) AS TotalOrders,
    SUM(o.Amount) AS TotalAmount
FROM Customer c
INNER JOIN Orders_1 o
ON c.CustomerID = o.CustomerID
WHERE o.OrderDate >= '2022-01-01'
GROUP BY c.Country;


SELECT 
    c.Country,
    COUNT(o.OrderID) AS TotalOrders,
    SUM(o.Amount) AS TotalAmount
FROM Customer c
INNER JOIN Orders_1 o
ON c.CustomerID = o.CustomerID
WHERE o.OrderDate >= '2022-01-01'
GROUP BY c.Country
HAVING SUM(o.Amount) > 100
ORDER BY TotalAmount DESC;

SELECT 
    c.Country,
    COUNT(o.OrderID) AS TotalOrders,
    SUM(o.Amount) AS TotalAmount
FROM Customer c
INNER JOIN Orders_1 o
ON c.CustomerID = o.CustomerID
WHERE o.OrderDate >= '2022-01-01'
GROUP BY c.Country
HAVING SUM(o.Amount) > 100
ORDER BY TotalAmount DESC
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;







