DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;
-- ============================================================
-- Dog Walking Database
-- Table: Clients
-- ============================================================

CREATE TABLE ZipCodes (
    ZipCode     VARCHAR(10)  NOT NULL,
    City        VARCHAR(100) NOT NULL,
    State       VARCHAR(50)  NOT NULL,
    CONSTRAINT pk_ZipCodes PRIMARY KEY (ZipCode)
);

CREATE TABLE Clients (
    ClientID    INT          NOT NULL AUTO_INCREMENT,
    ClientName  VARCHAR(100) NOT NULL,
    PhoneNumber VARCHAR(15)  NOT NULL,
    Email       VARCHAR(100) NOT NULL,
    Street      VARCHAR(150) NOT NULL,
    ZipCode     VARCHAR(10)  NOT NULL,
    CONSTRAINT pk_Clients   PRIMARY KEY (ClientID),
    CONSTRAINT fk_Clients_ZipCode FOREIGN KEY (ZipCode)
        REFERENCES ZipCodes(ZipCode)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);
-- ============================================================
-- Dog Walking Database
-- Table: Dogs
-- ============================================================
 
CREATE TABLE Dogs (
    DogID       INT          NOT NULL AUTO_INCREMENT,
    DogTag      VARCHAR(50)  NOT NULL,
    DogName     VARCHAR(100) NOT NULL,
    Breed       VARCHAR(100) NOT NULL,
    DateOfBirth DATE         NOT NULL,
    DogNotes    TEXT         NULL,
    ClientID    INT          NOT NULL,
    CONSTRAINT pk_Dogs PRIMARY KEY (DogID),
    CONSTRAINT fk_Dogs_ClientID FOREIGN KEY (ClientID)
        REFERENCES Clients(ClientID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);
-- ============================================================
-- Dog Walking Database
-- Table: Appointments
-- ============================================================

CREATE TABLE Appointments (
    AppointmentID   INT          NOT NULL AUTO_INCREMENT,
    Date            DATE         NOT NULL,
    Time            TIME         NOT NULL,
    Duration        INT          NOT NULL,
    Status          VARCHAR(20)  NOT NULL DEFAULT 'Scheduled',
    ClientID        INT          NOT NULL,
    CONSTRAINT pk_Appointments PRIMARY KEY (AppointmentID),
    CONSTRAINT fk_Appointments_ClientID FOREIGN KEY (ClientID)
        REFERENCES Clients(ClientID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT chk_Appointments_Status CHECK (Status IN ('Scheduled', 'Completed', 'Cancelled')),
    CONSTRAINT chk_Appointments_Duration CHECK (Duration > 0)
);
-- ============================================================
-- Dog Walking Database
-- Table: Walk_Logs
-- ============================================================

CREATE TABLE Walk_Logs (
    LogID           INT             NOT NULL AUTO_INCREMENT,
    Notes           TEXT            NULL,
    WalkingRoute    VARCHAR(255)    NOT NULL,
    Distance        DECIMAL(5,2)    NOT NULL,
    City            VARCHAR(100)    NOT NULL,
    AppointmentID   INT             NOT NULL,
    DogID           INT             NOT NULL,
    CONSTRAINT pk_Walk_Logs PRIMARY KEY (LogID),
    CONSTRAINT fk_WalkLogs_AppointmentID FOREIGN KEY (AppointmentID)
        REFERENCES Appointments(AppointmentID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT fk_WalkLogs_DogID FOREIGN KEY (DogID)
        REFERENCES Dogs(DogID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT chk_WalkLogs_Distance CHECK (Distance > 0)
);
-- ============================================================
-- Dog Walking Database
-- Table: Payments
-- ============================================================

CREATE TABLE Payments (
    PaymentID           INT             NOT NULL AUTO_INCREMENT,
    PaymentDate         DATE            NOT NULL,
    PaymentMethod       VARCHAR(50)     NOT NULL,
    Price               DECIMAL(8,2)    NOT NULL,
    PaymentConfirmation VARCHAR(100)    NOT NULL,
    Status              VARCHAR(20)     NOT NULL DEFAULT 'Pending',
    AppointmentID       INT             NOT NULL,
    CONSTRAINT pk_Payments PRIMARY KEY (PaymentID),
    CONSTRAINT fk_Payments_AppointmentID FOREIGN KEY (AppointmentID)
        REFERENCES Appointments(AppointmentID)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,
    CONSTRAINT uq_Payments_Confirmation UNIQUE (PaymentConfirmation),
    CONSTRAINT chk_Payments_Status CHECK (Status IN ('Paid', 'Pending', 'Overdue')),
    CONSTRAINT chk_Payments_Method CHECK (PaymentMethod IN ('Cash', 'Credit Card', 'Debit Card', 'Check', 'Venmo', 'Zelle', 'PayPal')),
    CONSTRAINT chk_Payments_Price CHECK (Price > 0)
);