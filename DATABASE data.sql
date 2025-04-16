-- Insert sample data with a minimum of 10 data rows into each table above where applicable.

-- Operators
INSERT INTO Operator VALUES 
(1, 'Ammer', 'Smith', 45, 25, 'Captain', 22000, 5000),
(2, 'John', 'Doe', 50, 30, 'Co-Captain', 25000, 6000),
(3, 'Jane', 'Roe', 40, 15, 'Captain', 15000, 4000),
(4, 'Jim', 'Beam', 35, 10, 'Co-Captain', 10000, 3500),
(5, 'Jack', 'Daniels', 38, 20, 'Captain', 20000, 4500);

-- TrainRoute
INSERT INTO TrainRoute VALUES 
(1, 'Northern Track', 'NT01', 5),
(2, 'Southern Track', 'ST02', 4),
(3, 'East Coast Track', 'ECT03', 3);

-- Train
INSERT INTO Train VALUES 
(1, 50, 200, '2024-08-05', '08:00:00', '2024-08-05', '12:00:00', 'Kuala Lumpur', 'Kangar', 1),
(2, 50, 200, '2024-08-05', '10:00:00', '2024-08-05', '14:00:00', 'Kuala Lumpur', 'Kangar', 1),
(3, 50, 200, '2024-08-05', '08:00:00', '2024-08-05', '12:00:00', 'Kuala Lumpur', 'Johor Bahru', 2),
(4, 50, 200, '2024-08-05', '10:00:00', '2024-08-05', '14:00:00', 'Kuala Lumpur', 'Johor Bahru', 2),
(5, 50, 200, '2024-08-05', '08:00:00', '2024-08-05', '12:00:00', 'Kuala Lumpur', 'Kota Bharu', 3),
(6, 50, 200, '2024-08-05', '10:00:00', '2024-08-05', '14:00:00', 'Kuala Lumpur', 'Kota Bharu', 3);

-- TrainStation
INSERT INTO TrainStation VALUES 
(1, 'Kuala Lumpur', 'Kuala Lumpur', 'KL Sentral'),
(2, 'Perak', 'Ipoh', 'Ipoh Station'),
(3, 'Pulau Pinang', 'George Town', 'Penang Sentral'),
(4, 'Kedah', 'Alor Setar', 'Alor Setar Station'),
(5, 'Perlis', 'Kangar', 'Kangar Station'),
(6, 'Melaka', 'Melaka', 'Melaka Sentral'),
(7, 'Negeri Sembilan', 'Seremban', 'Seremban Station'),
(8, 'Johor', 'Johor Bahru', 'JB Sentral'),
(9, 'Pahang', 'Kuantan', 'Kuantan Sentral'),
(10, 'Terengganu', 'Kuala Terengganu', 'KT Sentral'),
(11, 'Kelantan', 'Kota Bharu', 'Kota Bharu Station');

-- TrainStationBridge
INSERT INTO TrainStationBridge VALUES 
(1, 1, 1),
(1, 1, 2),
(1, 1, 3),
(2, 3, 1),
(2, 3, 6),
(2, 3, 7),
(2, 3, 8),
(3, 5, 1),
(3, 5, 9),
(3, 5, 10),
(3, 5, 11);

-- TrainOperatorBridge
INSERT INTO TrainOperatorBridge VALUES 
(1, 1, 1),
(1, 2, 2),
(2, 3, 3),
(2, 4, 4),
(3, 5, 5);

-- Attendant
INSERT INTO Attendant VALUES 
(1, 'Alice', 'Brown', 'Attendant', 3000, '123-456-7890', '123 Elm St, Kuala Lumpur, 50000, Malaysia'),
(2, 'Bob', 'Green', 'Attendant', 3200, '234-567-8901', '456 Oak St, Kuala Lumpur, 50000, Malaysia'),
(3, 'Charlie', 'White', 'Attendant', 3100, '345-678-9012', '789 Pine St, Kuala Lumpur, 50000, Malaysia'),
(4, 'David', 'Black', 'Attendant', 3000, '456-789-0123', '101 Maple St, Kuala Lumpur, 50000, Malaysia'),
(5, 'Eve', 'Blue', 'Attendant', 3200, '567-890-1234', '202 Birch St, Kuala Lumpur, 50000, Malaysia');

-- TrainAttendantBridge
INSERT INTO TrainAttendantBridge VALUES 
(1, 1, 1),
(1, 1, 2),
(1, 1, 3),
(1, 2, 4),
(1, 2, 5),
(2, 3, 1),
(2, 3, 2),
(2, 3, 3),
(2, 4, 4),
(2, 4, 5),
(3, 5, 1),
(3, 5, 2),
(3, 5, 3),
(3, 6, 4),
(3, 6, 5);

-- Customers
INSERT INTO Customer VALUES 
(1, 'Ethan', 'Hunt', '789 Elm St', 'Kuala Lumpur', 'Wilayah Persekutuan', '50000', 'Malaysia', '601-234-5678', 'ethan.hunt@example.com'),
(2, 'James', 'Bond', '456 Oak St', 'Ipoh', 'Perak', '30000', 'Malaysia', '602-345-6789', 'james.bond@example.com'),
(3, 'Jason', 'Bourne', '123 Pine St', 'George Town', 'Pulau Pinang', '10000', 'Malaysia', '603-456-7890', 'jason.bourne@example.com'),
(4, 'Lara', 'Croft', '789 Maple St', 'Alor Setar', 'Kedah', '05100', 'Malaysia', '604-567-8901', 'lara.croft@example.com'),
(5, 'Indiana', 'Jones', '456 Birch St', 'Kangar', 'Perlis', '01000', 'Malaysia', '605-678-9012', 'indiana.jones@example.com');

-- Reservations
INSERT INTO Reservation VALUES 
(1, 'Confirmed', '2024-08-01', '2024-08-05', 2, 5, 500.00, 7, 1, 5, 1, 1),
(2, 'Pending', '2024-08-02', '2024-08-05', 1, 4, 400.00, 5, 1, 5, 2, 2),
(3, 'Cancelled', '2024-08-03', '2024-08-05', 0, 3, 300.00, 3, 1, 5, 3, 3),
(4, 'Confirmed', '2024-08-01', '2024-08-05', 3, 6, 600.00, 9, 1, 5, 4, 4),
(5, 'Pending', '2024-08-02', '2024-08-05', 1, 4, 400.00, 5, 1, 5, 5, 5);

-- Question 1
SELECT AVG(Salary) AS AverageSalary
FROM Operator
WHERE LeadHours >= 15000;

-- Question 2
SELECT O.FirstName, O.LastName, O.Age, O.YearsOfExperience
FROM Operator O
JOIN TrainOperatorBridge TOB ON O.EmployeeNumber = TOB.EmployeeNumber
JOIN TrainRoute TR ON TOB.RouteID = TR.RouteID
WHERE TR.RouteName = 'Northern Track';

-- Question 3
SELECT TR.RouteName, COUNT(T.TrainNumber) AS NumberOfTrains
FROM TrainRoute TR
JOIN Train T ON TR.RouteID = T.RouteID
GROUP BY TR.RouteName
HAVING COUNT(T.TrainNumber) = (
    SELECT MAX(NumberOfTrains) 
    FROM (
        SELECT COUNT(T.TrainNumber) AS NumberOfTrains
        FROM TrainRoute TR
        JOIN Train T ON TR.RouteID = T.RouteID
        GROUP BY TR.RouteName
    ) AS Subquery
);

-- Question 4
SELECT C.FirstName, C.LastName
FROM Customer C
JOIN Reservation R ON C.CustomerID = R.CustomerID
GROUP BY C.CustomerID, C.FirstName, C.LastName
HAVING COUNT(R.ReservationNumber) > 2;

-- Question 5
SELECT A.FirstName, A.LastName, A.Position
FROM Attendant A
JOIN TrainAttendantBridge TAB ON A.AttendantID = TAB.AttendantID
JOIN TrainOperatorBridge TOB ON TAB.RouteID = TOB.RouteID AND TAB.TrainNumber = TOB.TrainNumber
JOIN Operator O ON TOB.EmployeeNumber = O.EmployeeNumber
WHERE O.FirstName = 'Ammer';

-- Question 6
SELECT DISTINCT C.FirstName, C.LastName, C.State
FROM Customer C
JOIN TrainStation TS ON C.State = TS.State;

-- SAMPLE DATA FOR CUSTOMER TABLE
INSERT INTO Customer (CustomerID, FirstName, LastName ,State,PostalCode, PhoneNumber, email) VALUES 
(1, 'Michael', 'Jordan', 'Kuala Lumpur, 53000', '123-456-7890', 'mjordan@example.com'),
(2, 'Scottie', 'Pippen', 'Kuala Lumpur, 53300', '234-567-8901', 'spippen@example.com'),
(3, 'Dennis', 'Rodman', 'Kuala Lumpur, 53330', '345-678-9012', 'drodman@example.com'),
(4, 'Steve', 'Kerr', 'Kuala Lumpur, 54240', '456-789-0123', 'skerr@example.com'),
(5, 'Toni', 'Kukoc', 'Kuala Lumpur, 55500', '567-890-1234', 'tkukoc@example.com');

-- SAMPLE DATA FOR STATION TABLE
INSERT INTO TrainStation (StationID, StationName, state) VALUES 
(1, 'Kuala Lumpur', 'Kuala Lumpur'), 
(2, 'Ipoh', 'Perak'), 
(3, 'George Town', 'Pulau Pinang'), 
(4, 'Alor Setar', 'Kedah'), 
(5, 'Kangar', 'Perlis'), 
(6, 'Melaka', 'Melaka'), 
(7, 'Seremban', 'Negeri Sembilan'), 
(8, 'Johor Bahru', 'Johor'), 
(9, 'Kuantan', 'Pahang'), 
(10, 'Kuala Terengganu', 'Terengganu'), 
(11, 'Kota Bharu', 'Kelantan');

-- Question 7
SELECT TrainNumber, TotalSeatsBusiness
FROM Train
WHERE TotalSeatsBusiness = (
    SELECT MAX(TotalSeatsBusiness) 
    FROM Train
);
-- SAMPLE DATA FOR TRAIN TABLE
INSERT INTO Train (TrainNumber, TotalSeatsBusiness, TotalSeatsEconomy, DepartureDate, DepartureTime, OriginState, DestinationState, ArrivalTime, RouteID) VALUES 
(1, 'NA1709', 50, 200, '2024-08-01', '08:00:00', 'Kuala Lumpur', 'Pulau Pinang','12:00:00', 1, 2, 1),
(2, 'NA1710', 40, 180, '2024-08-01', '09:00:00', 'Pulau Pinang', 'Kelantan','13:00:00', 2, 3, 1),
(3, 'SA1865', 60, 220, '2024-08-01', '10:00:00', 'Johor', 'Kuala Lumpur','14:00:00', 3, 4, 2),
(4, 'CA8760', 30, 150, '2024-08-01', '11:00:00', 'Pahang', 'Pulau Pinang','15:00:00', 4, 5, 3),
(5, 'NA1711', 55, 210, '2024-08-01', '12:00:00', 'Kelantan', 'Johor', '16:00:00', 5, 1, 1);


-- Question 8
SELECT C.FirstName, C.LastName
FROM Customer C
LEFT JOIN Reservation R ON C.CustomerID = R.CustomerID
WHERE R.CustomerID IS NULL
ORDER BY C.CustomerID DESC;

-- Question 9
SELECT TR.RouteID AS TrainID, TR.RouteName AS TrainName, COUNT(T.TrainNumber) AS TotalNumberOfTrains
FROM TrainRoute TR
JOIN Train T ON TR.RouteID = T.RouteID
GROUP BY TR.RouteID, TR.RouteName;
-- SAMPLE DATA FOR TRAIN TABLE
INSERT INTO Train (TrainNumber, TotalSeatsBusiness, TotalSeatsEconomy, DepartureDate, DepartureTime, ArrivalDate, ArrivalTime, OriginState, DestinationState) VALUES
(1, 'NA1709', 30, 200, '2024-08-05', '08:00', '2024-08-05', '14:00', 'Kuala Lumpur', 'Perlis'),
(2, 'SA1865', 25, 180, '2024-08-05', '09:00', '2024-08-05', '15:00', 'Kuala Lumpur', 'Johor'),
(3, 'CA8760', 20, 150, '2024-08-05', '10:00', '2024-08-05', '16:00', 'Kuala Lumpur', 'Kelantan'),
(4, 'NA1709', 30, 200, '2024-08-06', '08:00', '2024-08-06', '14:00', 'Kuala Lumpur', 'Perlis'),
(5, 'SA1865', 25, 180, '2024-08-06', '09:00', '2024-08-06', '15:00', 'Kuala Lumpur', 'Johor'),
(6, 'CA8760', 20, 150, '2024-08-06', '10:00', '2024-08-06', '16:00', 'Kuala Lumpur', 'Kelantan'),
(7, 'NA1709', 30, 200, '2024-08-07', '08:00', '2024-08-07', '14:00', 'Kuala Lumpur', 'Perlis'),
(8, 'SA1865', 25, 180, '2024-08-07', '09:00', '2024-08-07', '15:00', 'Kuala Lumpur', 'Johor'),
(9, 'CA8760', 20, 150, '2024-08-07', '10:00', '2024-08-07', '16:00', 'Kuala Lumpur', 'Kelantan'),
(10, 'NA1709', 30, 200, '2024-08-08', '08:00', '2024-08-08', '14:00', 'Kuala Lumpur', 'Perlis');

-- SAMPLE DATA FOR TRAIN ROUTE TABLE
INSERT INTO TrainRoute (RouteID, RouteName) VALUES
(1, 'Northern Track'),
(2, 'Southern Track'),
(3, 'East Coast Track');

-- Question 10
SELECT FirstName, LastName, Position
FROM Attendant
WHERE Salary NOT IN (2800, 3500);

-- Question 11
SELECT TOP 1 C.FirstName, C.LastName, COUNT(R.ReservationNumber) AS TotalReservations
FROM Customer C
JOIN Reservation R ON C.CustomerID = R.CustomerID
GROUP BY C.CustomerID, C.FirstName, C.LastName
ORDER BY TotalReservations DESC;

-- Question 12
SELECT TR.RouteName, COUNT(R.ReservationNumber) AS NumberOfReservations
FROM TrainRoute TR
JOIN Train T ON TR.RouteID = T.RouteID
JOIN Reservation R ON T.TrainNumber = R.TrainNumber
GROUP BY TR.RouteName
HAVING COUNT(R.ReservationNumber) = (
    SELECT MAX(NumberOfReservations)
    FROM (
        SELECT COUNT(R.ReservationNumber) AS NumberOfReservations
        FROM TrainRoute TR
        JOIN Train T ON TR.RouteID = T.RouteID
        JOIN Reservation R ON T.TrainNumber = R.TrainNumber
        GROUP BY TR.RouteName
    ) AS Subquery
);



