DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE Clients (
    ClientID VARCHAR(50) PRIMARY KEY,
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100),
    StreetAddress VARCHAR(255),
    City VARCHAR(100),
    State CHAR(2),
    ZipCode CHAR(10)
);

-- Dogs table
CREATE TABLE Dogs (
    DogID INT AUTO_INCREMENT PRIMARY KEY,
    ClientID VARCHAR(50),
    DogName VARCHAR(100),
    Breed VARCHAR(100),
    DateOfBirth DATE,
    Notes TEXT,
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID)
);

-- Appointments table
CREATE TABLE Appointments (
    AppointmentID INT AUTO_INCREMENT PRIMARY KEY,
    ClientID VARCHAR(50),
    DogID INT,
    Date DATE,
    Time TIME,
    DurationMinutes SMALLINT,
    Status VARCHAR(50),
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
    FOREIGN KEY (DogID) REFERENCES Dogs(DogID)
);

-- Walk_Logs table
CREATE TABLE Walk_Logs (
    LogID INT AUTO_INCREMENT PRIMARY KEY,
    DogID INT,
    AppointmentID INT,
    WalkDate DATE,
    DistanceMiles DECIMAL(5,2),
    Notes TEXT,
    FOREIGN KEY (DogID) REFERENCES Dogs(DogID),
    FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID)
);

-- Payments table
CREATE TABLE Payments (
    PaymentID INT AUTO_INCREMENT PRIMARY KEY,
    AppointmentID INT,
    PaymentDate DATE,
    PaymentMethod VARCHAR(50),
    Price DECIMAL(8,2),
    PaymentConfirmation VARCHAR(100),
    FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID)
);