CREATE VIEW CustomerOrders AS
SELECT
    C.FullName,
    O.OrderID,
    O.OrderDate,
    O.TotalAmount
FROM Customers C
JOIN Orders O
ON C.CustomerID = O.CustomerID;