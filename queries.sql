
SELECT Customers.name, Rooms.room_number, Bookings.check_in_date
FROM Bookings
JOIN Customers ON Bookings.customer_id = Customers.customer_id
JOIN Rooms ON Bookings.room_id = Rooms.room_id;
SELECT COUNT(*) FROM Bookings;
SELECT SUM(amount_paid) FROM Payments;
