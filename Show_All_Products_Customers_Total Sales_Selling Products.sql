SELECT * FROM Products;
SELECT * FROM Customers;

SELECT SUM(TotalAmount) AS TotalSales
FROM Orders;

SELECT
    P.ProductName,
    SUM(OD.Quantity) AS TotalSold
FROM OrderDetails OD
JOIN Products P
ON OD.ProductID = P.ProductID
GROUP BY P.ProductName
ORDER BY TotalSold DESC;