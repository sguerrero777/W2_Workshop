DROP SCHEMA IF EXISTS lana_dog_walking; 
CREATE SCHEMA lana_dog_walking; 
USE lana_dog_walking;

-- ============================================================
-- Creating Dog Walking Database
-- Member: Sharleen Guerrero
-- ============================================================

-- Creating Table 1: Clients
CREATE TABLE Clients (
ClientID INT PRIMARY KEY AUTO_INCREMENT,
ClientName VARCHAR(100) NOT NULL,
PhoneNumber VARCHAR(100) NOT NULL UNIQUE,
Email VARCHAR (100) NOT NULL UNIQUE,
StreetAddress VARCHAR (150) NOT NULL,
City VARCHAR(50),
State CHAR(2),
ZipCode CHAR(5)
);

-- Creating Table 2: Dogs
CREATE TABLE Dogs (
DogID INT PRIMARY KEY AUTO_INCREMENT,
ClientID INT,
DogName VARCHAR(50) NOT NULL,
Breed VARCHAR(100),
DateofBirth DATE,
Notes TEXT,
FOREIGN KEY (ClientID) REFERENCES Clients(ClientID)
);

-- Creating Table 3: Appointments
CREATE TABLE Appointments (
AppointmentID INT PRIMARY KEY AUTO_INCREMENT,
ClientID INT,
DogID INT,
Date DATE NOT NULL,
Time TIME NOT NULL,
DurationMinutes SMALLINT,
Status ENUM('Scheduled', 'Completed', 'Cancelled', 'No Show') NOT NULL,
FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
FOREIGN KEY (DogID) REFERENCES Dogs(DogID)
);

-- Creating Table 4: Payments
CREATE TABLE Payments (
PaymentID INT PRIMARY KEY AUTO_INCREMENT,
AppointmentID INT,
PaymentDate DATE NOT NULL,
PaymentMethod VARCHAR(30) NOT NULL,
Price DECIMAL(8,2) NOT NULL,
PaymentConfirmation VARCHAR(100),
PaymentStatus ENUM('Paid', 'Pending', 'Refund') NOT NULL,
FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID)
);

-- Creating Table 5: Walk_Logs
CREATE TABLE Walk_Logs (
LogID INT PRIMARY KEY AUTO_INCREMENT,
AppointmentID INT,
DogID INT,
WalkDate DATE NOT NULL,
DistanceMiles DECIMAL(5,2),
Notes TEXT,
FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID),
FOREIGN KEY (DogID) REFERENCES Dogs(DogID)
);
