-- Create a database named as DATABASE2TABLES. Then execute it.
CREATE DATABASE MANREENTEST;

-- Use the DATABASE2TABLES to create tables for each entities and insert its attributes.
USE MANREENTEST;

-- QUESTION 2 e) SQL-Data Definition Language (DDL)
-- Create tables with suitable attributes and data types
-- Create Operator table
CREATE TABLE Operator (
    EmployeeNumber INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Age INT CHECK (Age > 0),
    YearsOfExperience INT CHECK (YearsOfExperience >= 0),
    Position VARCHAR(50),
    LeadHours INT CHECK (LeadHours >= 0),
    Salary DECIMAL(10, 2) CHECK (Salary >= 0)
);

-- Create TrainRoute table
CREATE TABLE TrainRoute (
    RouteID INT PRIMARY KEY,
    RouteName VARCHAR(100) NOT NULL,
    TrackCode VARCHAR(50),
    NumberOfTrainsPerDay INT CHECK (NumberOfTrainsPerDay >= 0)
);

-- Create Train table
CREATE TABLE Train (
    TrainNumber INT PRIMARY KEY,
    TotalSeatsBusiness INT CHECK (TotalSeatsBusiness >= 0),
    TotalSeatsEconomy INT CHECK (TotalSeatsEconomy >= 0),
    DepartureDate DATE,
    DepartureTime TIME,
    ArrivalDate DATE,
    ArrivalTime TIME,
    OriginState VARCHAR(50),
    DestinationState VARCHAR(50),
    RouteID INT,
    FOREIGN KEY (RouteID) REFERENCES TrainRoute(RouteID)
);

-- Create TrainStation table
CREATE TABLE TrainStation (
    StationID INT PRIMARY KEY,
    State VARCHAR(50),
    City VARCHAR(50),
    StationName VARCHAR(100)
);

-- Create TrainStationBridge table
CREATE TABLE TrainStationBridge (
    RouteID INT,
    TrainNumber INT,
    StationID INT,
    PRIMARY KEY (RouteID, TrainNumber, StationID),
    FOREIGN KEY (RouteID) REFERENCES TrainRoute(RouteID),
    FOREIGN KEY (TrainNumber) REFERENCES Train(TrainNumber),
    FOREIGN KEY (StationID) REFERENCES TrainStation(StationID)
);

-- Create TrainOperatorBridge table
CREATE TABLE TrainOperatorBridge (
    RouteID INT,
    TrainNumber INT,
    EmployeeNumber INT,
    PRIMARY KEY (RouteID, TrainNumber, EmployeeNumber),
    FOREIGN KEY (RouteID) REFERENCES TrainRoute(RouteID),
    FOREIGN KEY (TrainNumber) REFERENCES Train(TrainNumber),
    FOREIGN KEY (EmployeeNumber) REFERENCES Operator(EmployeeNumber)
);

-- Create Attendant table
CREATE TABLE Attendant (
    AttendantID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Position VARCHAR(50),
    Salary DECIMAL(10, 2) CHECK (Salary >= 0),
    PhoneNumber VARCHAR(15),
    Address VARCHAR(255)
);

-- Create TrainAttendantBridge table
CREATE TABLE TrainAttendantBridge (
    RouteID INT,
    TrainNumber INT,
    AttendantID INT,
    PRIMARY KEY (RouteID, TrainNumber, AttendantID),
    FOREIGN KEY (RouteID) REFERENCES TrainRoute(RouteID),
    FOREIGN KEY (TrainNumber) REFERENCES Train(TrainNumber),
    FOREIGN KEY (AttendantID) REFERENCES Attendant(AttendantID)
);

-- Create Customer table
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Street VARCHAR(255),
    City VARCHAR(50),
    State VARCHAR(50),
    PostalCode VARCHAR(10),
    Country VARCHAR(50),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100)
);

-- Create Reservation table
CREATE TABLE Reservation (
    ReservationNumber INT PRIMARY KEY,
    ReservationState VARCHAR(50),
    ReservationDate DATE,
    TravelingDate DATE,
    SeatsReservedBusiness INT CHECK (SeatsReservedBusiness >= 0),
    SeatsReservedEconomy INT CHECK (SeatsReservedEconomy >= 0),
    TotalCharges DECIMAL(10, 2) CHECK (TotalCharges >= 0),
    ReservationTotal INT,
    DepartureStation INT,
    DestinationStation INT,
    TrainNumber INT,
    CustomerID INT,
    FOREIGN KEY (DepartureStation) REFERENCES TrainStation(StationID),
    FOREIGN KEY (DestinationStation) REFERENCES TrainStation(StationID),
    FOREIGN KEY (TrainNumber) REFERENCES Train(TrainNumber),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

