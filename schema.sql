CREATE TABLE Customers (
customer_id INT PRIMARY KEY,
name VARCHAR(100),
email VARCHAR(100),
phone VARCHAR(20),
address VARCHAR(200)
);

CREATE TABLE Rooms (
room_id INT PRIMARY KEY,
room_number INT,
room_type VARCHAR(50),
price_per_night DECIMAL(10,2),
availability_status VARCHAR(20)
);

CREATE TABLE Bookings (
booking_id INT PRIMARY KEY,
customer_id INT,
room_id INT,
check_in_date DATE,
check_out_date DATE,
booking_status VARCHAR(20),
total_amount DECIMAL(10,2),
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
FOREIGN KEY (room_id) REFERENCES Rooms(room_id)
);

CREATE TABLE Payments (
payment_id INT PRIMARY KEY,
booking_id INT,
payment_date DATE,
amount_paid DECIMAL(10,2),
payment_method VARCHAR(50),
FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id)
);
