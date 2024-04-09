-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

SELECT * FROM Customers WHERE Address = '6939 Elka Place';

INSERT INTO CustomersDishes (CustomerID, DishID)
VALUES (70,
  (SELECT DishID FROM Dishes WHERE Name = 'House Salad')
  );

INSERT INTO CustomersDishes (CustomerID, DishID)
VALUES (70,
  (SELECT DishID FROM Dishes WHERE Name = 'Mini Cheeseburgers')
  );

INSERT INTO CustomersDishes (CustomerID, DishID)
VALUES (70,
  (SELECT DishID FROM Dishes WHERE Name = 'Tropical Blue Smoothie')
  );

INSERT INTO Orders (CustomerID, OrderDate)
VALUES (70, '2022-09-20 14:00:00');

SELECT * FROM Orders WHERE CustomerID = 70;

INSERT INTO OrdersDishes (OrderID, DishID)
VALUES (1001, 7);

INSERT INTO OrdersDishes (OrderID, DishID)
VALUES (1001, 4);

INSERT INTO OrdersDishes (OrderID, DishID)
VALUES (1001, 20);

SELECT SUM(Dishes.Price) AS 'Total Price'
FROM Dishes
JOIN OrdersDishes ON Dishes.DishID = OrdersDishes.DishID
WHERE OrdersDishes.OrderID = 1001;