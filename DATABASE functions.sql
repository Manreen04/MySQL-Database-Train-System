-- Part 2 database assignment.
Create database TestManreen;

-- Create table for each of the entities.
CREATE TABLE Train (
    TrainNumber VARCHAR(10) PRIMARY KEY,
    TotalSeatsBusiness INT,
    TotalSeatsEconomy INT,
    DateOfDeparture DATE,
    TimeOfDeparture TIME,
    DateOfArrival DATE,
    TimeOfArrival TIME,
    OriginState VARCHAR(50),
    DestinationState VARCHAR(50)
);

CREATE TABLE TrainOperator (
    EmployeeNumber INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    YearsOfExperience INT,
    Position VARCHAR(50),
    LeadHours INT,
    Salary DECIMAL(10, 2)
);

CREATE TABLE TrainAttendant (
    AttendantID INT PRIMARY KEY,
    FullName VARCHAR(100),
    Position VARCHAR(50),
    Salary DECIMAL(10, 2),
    PhoneNumber VARCHAR(15),
    Address TEXT
);

CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    MailingAddress TEXT,
    EmailAddress VARCHAR(100) UNIQUE
);

CREATE TABLE Reservation (
    ReservationNumber INT PRIMARY KEY,
    ReservationState VARCHAR(50),
    ReservationDate DATE,
    TravelingDate DATE,
    TrainNumber VARCHAR(10),
    SeatsReserved INT,
    DepartureStation VARCHAR(50),
    Destination VARCHAR(50),
    TotalCharges DECIMAL(10, 2),
    ReservationTotal DECIMAL(10, 2)
);

-- Insert 10 rows of data in each table.
INSERT INTO Train (TrainNumber, TotalSeatsBusiness, TotalSeatsEconomy, DateOfDeparture, TimeOfDeparture, DateOfArrival, TimeOfArrival, OriginState, DestinationState)
VALUES
('NA1710', 55, 210, '2024-08-02', '07:30', '2024-08-02', '10:30', 'Perak', 'Pulau Pinang'),
('NA1711', 50, 200, '2024-08-03', '08:45', '2024-08-03', '10:45', 'Pulau Pinang', 'Kedah'),
('NA1712', 60, 190, '2024-08-04', '09:15', '2024-08-04', '10:45', 'Kedah', 'Perlis'),
('SA1866', 65, 175, '2024-08-02', '08:00', '2024-08-02', '10:30', 'Melaka', 'Negeri Sembilan'),
('SA1867', 70, 160, '2024-08-03', '09:30', '2024-08-03', '14:30', 'Negeri Sembilan', 'Johor'),
('CA8761', 60, 200, '2024-08-01', '06:00', '2024-08-01', '10:00', 'Kuala Lumpur', 'Pahang'),
('CA8762', 55, 185, '2024-08-02', '06:30', '2024-08-02', '12:30', 'Pahang', 'Terengganu'),
('CA8763', 50, 175, '2024-08-03', '07:00', '2024-08-03', '12:00', 'Terengganu', 'Kelantan'),
('CA8764', 65, 150, '2024-08-04', '07:45', '2024-08-04', '16:45', 'Kelantan', 'Kuala Lumpur'),
('NA1713', 55, 210, '2024-08-05', '10:00', '2024-08-05', '12:30', 'Kuala Lumpur', 'Perak');

SELECT AVG(salary)
FROM TrainOperators
WHERE operation_hours >= 15000;


SELECT first_name, last_name, age, experience
FROM TrainOperators
JOIN TrainAssignments ON TrainOperators.operator_id = TrainAssignments.operator_id
JOIN Tracks ON TrainAssignments.track_id = Tracks.track_id
WHERE Tracks.track_name = 'Northern Track';

SELECT track_name, COUNT(train_id) AS number_of_trains
FROM Trains
JOIN Tracks ON Trains.track_id = Tracks.track_id
GROUP BY track_name
ORDER BY number_of_trains DESC
LIMIT 1;

SELECT first_name, last_name
FROM Customers
JOIN Reservations ON Customers.customer_id = Reservations.customer_id
GROUP BY first_name, last_name
HAVING COUNT(reservation_id) > 2;

SELECT Attendants.full_name, Attendants.position
FROM Attendants
JOIN TrainAssignments ON Attendants.attendant_id = TrainAssignments.attendant_id
JOIN TrainOperators ON TrainAssignments.operator_id = TrainOperators.operator_id
WHERE TrainOperators.first_name = 'Ammer';

SELECT Customers.first_name, Customers.last_name, Customers.state
FROM Customers
JOIN Reservations ON Customers.customer_id = Reservations.customer_id
JOIN Stations ON Reservations.departure_station_id = Stations.station_id
WHERE Customers.state = Stations.state;

SELECT train_name, business_class_seats
FROM Trains
ORDER BY business_class_seats DESC
LIMIT 1;

SELECT first_name, last_name
FROM Customers
WHERE customer_id NOT IN (SELECT customer_id FROM Reservations)
ORDER BY customer_id DESC;

SELECT train_id, train_name, COUNT(train_id) AS total_trains
FROM Trains
GROUP BY train_id, train_name;

SELECT full_name, position
FROM Attendants
WHERE salary NOT IN (2800, 3500);

SELECT first_name, last_name, COUNT(reservation_id) AS total_reservations
FROM Customers
JOIN Reservations ON Customers.customer_id = Reservations.customer_id
GROUP BY first_name, last_name
ORDER BY total_reservations DESC
LIMIT 1;

SELECT track_name, COUNT(reservation_id) AS total_reservations
FROM Reservations
JOIN Trains ON Reservations.train_id = Trains.train_id
JOIN Tracks ON Trains.track_id = Tracks.track_id
GROUP BY track_name
ORDER BY total_reservations DESC
LIMIT 1;
