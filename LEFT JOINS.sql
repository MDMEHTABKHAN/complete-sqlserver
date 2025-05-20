USE TEST;

--  *** LEFT JOIN *** 

SELECT *
FROM Customer c
LEFT JOIN Orders_1 o
ON c.CustomerID = o.CustomerID;


SELECT c.CustomerName, c.Country, o.Amount, o.OrderDate
FROM Customer c
LEFT JOIN Orders_1 o
on c.CustomerID = o.CustomerID;

SELECT c.CustomerName, c.Country, o.Amount
FROM Customer c
LEFT JOIN Orders_1 o
ON c.CustomerID = o.CustomerID
WHERE o.Amount >= 205;


SELECT c.CustomerName, c.Country, o.Amount
FROM Customer c
LEFT JOIN Orders_1 o
ON c.CustomerID = o.CustomerID
WHERE o.Amount >= 40
ORDER BY o.Amount DESC;

SELECT c.CustomerName, c.Country, o.Amount
FROM Customer c
LEFT JOIN Orders_1 o
ON c.CustomerID = o.CustomerID
WHERE o.Amount >= 40
ORDER BY o.Amount ASC;


SELECT c.Country, SUM(o.Amount)
FROM Customer c
LEFT JOIN Orders_1 o
ON c.CustomerID = o.CustomerID
GROUP BY c.Country;

SELECT c.Country, SUM(o.Amount)
FROM Customer c
LEFT JOIN Orders_1 o
ON c.CustomerID = o.CustomerID
GROUP BY c.Country
ORDER BY c.Country;


SELECT c.Country, SUM(o.Amount)
FROM Customer c
LEFT JOIN Orders_1 o
ON c.CustomerID = o.CustomerID
GROUP BY c.Country
HAVING SUM(o.Amount) >= 200;
