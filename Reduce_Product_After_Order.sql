CREATE TRIGGER trg_UpdateStock
ON OrderDetails
AFTER INSERT
AS
BEGIN
    UPDATE Products
    SET StockQuantity = StockQuantity - I.Quantity
    FROM Products P
    JOIN Inserted I
    ON P.ProductID = I.ProductID;
END;