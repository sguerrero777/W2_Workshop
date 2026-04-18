USE lana_dog_walking;

INSERT INTO Clients (ClientID, ClientName, PhoneNumber, Email, StreetAddress, City, State, ZipCode) VALUES
(1, 'Oscar Ramos', '551-300-9976', 'oscarsuriano14@gmail.com', '214 60th St', 'West New York', 'NJ', '70930'),
(2, 'Maria Gonzalez', '201-555-0134', 'mariag@gmail.com', '87 Park Ave', 'Newark', 'NJ', '07102'),
(3, 'James Thornton', '718-555-0287', 'j.thornton@yahoo.com', '452 Bedford Ave', 'Brooklyn', 'NY', '11211'),
(4, 'Priya Patel', '732-555-0391', 'priyapatel@outlook.com', '19 Maple St', 'Edison', 'NJ', '08817'),
(5, 'Carlos Rivera', '347-555-0462', 'carlosr@gmail.com', '601 Grand Concourse', 'Bronx', 'NY', '10451'),
(6, 'Ashley Kim', '203-555-0578', 'ashleykim@gmail.com', '33 Elm Street', 'Stamford', 'CT', '06901'),
(7, 'Derek Williams', '914-555-0643', 'derekw@yahoo.com', '270 White Plains Rd', 'Yonkers', 'NY', '10601'),
(8, 'Samantha Cruz', '551-555-0719', 'scruz@gmail.com', '108 Bergenline Ave', 'Union City', 'NJ', '07087'),
(9, 'Michael O\'Brien', '212-555-0835', 'mobrien@outlook.com', '5 West 34th St', 'New York', 'NY', '10001'),
(10, 'Linda Chen', '908-555-0924', 'lindachen@gmail.com', '44 South Ave', 'Westfield', 'NJ', '07090'),
(11, 'Anthony Morales', '973-555-0167', 'amorales@gmail.com', '320 Ferry St', 'Newark', 'NJ', '07105');

INSERT INTO Dogs (DogID, ClientID, DogName, Breed, DateofBirth, Notes) VALUES
(1, 1, 'Axel', 'Siberian Husky', '2016-08-26', 'Axel is very friendly with children!'),
(2, 2, 'Bella', 'Golden Retriever', '2018-03-14', NULL),
(3, 3, 'Max', 'German Shepherd', '2017-07-22', 'Max is well trained, responds to basic commands.'),
(4, 4, 'Luna', 'Labrador Retriever', '2020-11-05', NULL),
(5, 5, 'Rocky', 'Bulldog', '2019-06-18', 'Rocky has a sensitive stomach, avoid rich foods.'),
(6, 6, 'Mochi', 'Shih Tzu', '2021-02-28', NULL),
(7, 7, 'Duke', 'Rottweiler', '2016-09-10', NULL),
(8, 8, 'Coco', 'Poodle', '2018-12-01', 'Coco is hypoallergenic, very well groomed.'),
(9, 9, 'Zeus', 'Doberman', '2017-04-15', 'Zeus requires an experienced handler.'),
(10, 10, 'Daisy', 'Beagle', '2022-08-30', NULL),
(11, 11, 'Bruno', 'Boxer', '2019-01-17', 'Bruno has a lot of energy, needs long walks.');

INSERT INTO Appointments (AppointmentID, ClientID, DogID, Date, Time, DurationMinutes, Status) VALUES
(1, 1, 1, '2026-02-12', '08:00:00', 60, 'Completed'),
(2, 2, 2, '2026-03-05', '09:30:00', 30, 'Completed'),
(3, 3, 3, '2026-03-18', '11:00:00', 45, 'Cancelled'),
(4, 4, 4, '2026-03-22', '14:00:00', 60, 'Completed'),
(5, 5, 5, '2026-03-28', '10:00:00', 30, 'No Show'),
(6, 6, 6, '2026-04-01', '13:30:00', 45, 'Completed'),
(7, 7, 7, '2026-04-05', '08:30:00', 60, 'Cancelled'),
(8, 8, 8, '2026-04-10', '15:00:00', 30, 'Completed'),
(9, 9, 9, '2026-04-14', '09:00:00', 45, 'No Show'),
(10, 10, 10, '2026-04-18', '11:30:00', 60, 'Scheduled'),
(11, 11, 11, '2026-04-25', '14:30:00', 30, 'Scheduled');

INSERT INTO Payments (PaymentID, AppointmentID, PaymentDate, PaymentMethod, Price, PaymentStatus) VALUES
(1, 1, '2026-02-12', 'Debit', 25.99, 'Paid'),
(2, 2, '2026-03-05', 'Credit Card', 15.00, 'Paid'),
(3, 4, '2026-03-22', 'Cash', 30.00, 'Paid'),
(4, 6, '2026-04-01', 'Credit Card', 22.50, 'Paid'),
(5, 8, '2026-04-10', 'Cash', 15.00, 'Paid'),
(6, 3, '2026-03-18', 'Venmo', 22.50, 'Refund'),
(7, 7, '2026-04-05', 'Debit', 30.00, 'Refund'),
(8, 5, '2026-03-28', 'Zelle', 20.00, 'Pending'),
(9, 9, '2026-04-14', 'Credit Card', 25.00, 'Pending'),
(10, 10, '2026-04-18', 'Debit', 30.00, 'Pending'),
(11, 11, '2026-04-25', 'Venmo', 20.00, 'Pending');

-- Only 5 records are inserted because Walk_Logs can only be created for Completed appointments.
-- Appointments 3 and 7 were Cancelled, appointments 5 and 9 were No Shows,
-- and appointments 10 and 11 are Scheduled (future). Only appointments 1, 2, 4, 6, and 8
-- have a Status of 'Completed', therefore only 5 Walk_Log records are valid without causing inconsistencies.

INSERT INTO Walk_Logs (LogID, AppointmentID, DogID, WalkDate, DistanceMiles, Notes) VALUES
(1, 1, 1, '2026-02-12', 3.50, 'Axel\'s collar is too large for his neck and accidentally unclasped, recommend a vest collar'),
(2, 2, 2, '2026-03-05', 1.50, 'Bella did great, very obedient on leash.'),
(3, 4, 4, '2026-03-22', 2.75, NULL),
(4, 6, 6, '2026-04-01', 2.00, 'Mochi got tired halfway, took a short break.'),
(5, 8, 8, '2026-04-10', 1.75, NULL);

SELECT * FROM Clients;
SELECT * FROM Dogs;
SELECT * FROM Appointments;
SELECT * FROM Payments;
SELECT * FROM Walk_Logs