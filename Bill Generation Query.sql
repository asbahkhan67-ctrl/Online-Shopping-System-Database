SELECT
    O.OrderID,
    C.FullName,
    P.ProductName,
    OD.Quantity,
    OD.SubTotal,
    O.TotalAmount,
    Pay.PaymentMethod,
    Pay.AmountPaid
FROM Orders O
JOIN Customers C
ON O.CustomerID = C.CustomerID

JOIN OrderDetails OD
ON O.OrderID = OD.OrderID

JOIN Products P
ON OD.ProductID = P.ProductID

JOIN Payments Pay
ON O.OrderID = Pay.OrderID

WHERE O.OrderID = 1;