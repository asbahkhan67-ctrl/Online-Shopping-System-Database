-- Customers
INSERT INTO Customers (FullName, Email, Phone, Address)
VALUES
('Ali Khan', 'ali@gmail.com', '03001234567', 'Lahore'),
('Sara Ahmed', 'sara@gmail.com', '03111234567', 'Karachi');

-- Products 
INSERT INTO Products (ProductName, Price, StockQuantity)
VALUES
('Laptop', 120000, 10),
('Mouse', 1500, 50),
('Keyboard', 3000, 30),
('Headphones', 5000, 20);

-- Creating order
INSERT INTO Orders (CustomerID, TotalAmount)
VALUES (1, 126500);

-- Adding order details
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, SubTotal)
VALUES
(1, 1, 1, 120000),
(1, 2, 1, 1500),
(1, 3, 1, 3000),
(1, 4, 1, 5000);

-- Payment
INSERT INTO Payments (OrderID, PaymentMethod, AmountPaid)
VALUES
(1, 'Cash', 129500);