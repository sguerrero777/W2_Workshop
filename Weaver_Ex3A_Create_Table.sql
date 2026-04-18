DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE Clients (
    ClientID INT AUTO_INCREMENT PRIMARY KEY,
    ClientName VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100),
    StreetAddress VARCHAR(150),
    City VARCHAR(50),
    State CHAR(2),
    ZipCode VARCHAR(10)
);
CREATE TABLE Dogs (
    DogID INT AUTO_INCREMENT PRIMARY KEY,
    ClientID INT NOT NULL,
    DogName VARCHAR(50) NOT NULL,
    Breed VARCHAR(50),
    DateOfBirth DATE,
    Notes TEXT,
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
CREATE TABLE Appointments (
    AppointmentID INT AUTO_INCREMENT PRIMARY KEY,
    ClientID INT NOT NULL,
    DogID INT NOT NULL,
    AppointmentDate DATE NOT NULL,
    AppointmentTime TIME NOT NULL,
    DurationMinutes INT NOT NULL,
    Status VARCHAR(20),
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (DogID) REFERENCES Dogs(DogID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
CREATE TABLE Payments (
    PaymentID INT AUTO_INCREMENT PRIMARY KEY,
    AppointmentID INT NOT NULL,
    PaymentDate DATE NOT NULL,
    PaymentMethod VARCHAR(30) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    PaymentConfirmation VARCHAR(100),
    FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
CREATE TABLE Walk_Logs (
    LogID INT AUTO_INCREMENT PRIMARY KEY,
    DogID INT NOT NULL,
    AppointmentID INT NOT NULL,
    WalkDate DATE NOT NULL,
    DistanceMiles DECIMAL(5,2),
    Notes TEXT,
    FOREIGN KEY (DogID) REFERENCES Dogs(DogID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
