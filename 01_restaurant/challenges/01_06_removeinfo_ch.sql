-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

SELECT * FROM Customers WHERE FirstName = 'Norby';

DELETE FROM Customers WHERE CustomerID = 64;
DELETE FROM Reservations WHERE ReservationID = 2000;

SELECT * FROM Customers;