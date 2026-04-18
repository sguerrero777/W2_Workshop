USE lana_dog_walking;
-- =========================
-- 1. Clients (NOW includes ClientName)
-- =========================

TRUNCATE Clients;
INSERT INTO Clients (ClientID, ClientName, PhoneNumber, Email, StreetAddress, City, State, ZipCode) VALUES
(43678901, 'Sierra Watson', '646-528-9977', 'Swatson2@gmail.com', '118 W Park Ave', 'New York', 'NY', '10300'),
(43678902, 'James Doe', '212-555-1843', 'jdoe1@gmail.com', '45 E 12th St', 'New York', 'NY', '10003'),
(43678903, 'Maria Smith', '718-555-9921', 'msmith22@yahoo.com', '78 Brooklyn Ave', 'Brooklyn', 'NY', '11216'),
(43678904, 'Liam Jackson', '917-555-6678', 'ljackson@mail.com', '200 Madison Ave', 'New York', 'NY', '10016'),
(43678905, 'Ravi Patel', '646-555-3210', 'rpatel@gmail.com', '12 Queens Blvd', 'Queens', 'NY', '11101'),
(43678906, 'Trang Nguyen', '347-555-9087', 'tnguyen@yahoo.com', '89 Elm St', 'Bronx', 'NY', '10458'),
(43678907, 'Kevin Garcia', '929-555-4432', 'kgarcia@gmail.com', '156 Richmond Rd', 'Staten Island', 'NY', '10305'),
(43678908, 'Brian Wilson', '212-555-7765', 'bwilson@mail.com', '300 5th Ave', 'New York', 'NY', '10118'),
(43678909, 'Chris Thomas', '718-555-2345', 'cthomas@yahoo.com', '67 Flatbush Ave', 'Brooklyn', 'NY', '11217'),
(43678910, 'Diana Martin', '917-555-6543', 'dmartin@gmail.com', '890 Lexington Ave', 'New York', 'NY', '10065'),
(43678911, 'Hannah Lee', '646-555-8888', 'hlee@mail.com', '25 Wall St', 'New York', 'NY', '10005');

-- =========================
-- 2. Dogs
-- =========================

TRUNCATE Dogs;
INSERT INTO Dogs (DogID, ClientID, DogName, Breed, DateOfBirth, Notes) VALUES
(23465, 43678901, 'Luca', 'Golden Retriever', '2020-04-10', 'Very energetic'),
(23466, 43678902, 'Max', 'Labrador Retriever', '2019-06-15', 'Friendly'),
(23467, 43678903, 'Bella', 'French Bulldog', '2021-09-21', 'Loves attention'),
(23468, 43678904, 'Charlie', 'Poodle', '2018-02-11', 'Well trained'),
(23469, 43678905, 'Daisy', 'Beagle', '2020-07-30', 'Curious'),
(23470, 43678906, 'Rocky', 'Boxer', '2019-05-05', 'High energy'),
(23471, 43678907, 'Luna', 'Siberian Husky', '2021-12-01', 'Needs exercise'),
(23472, 43678908, 'Milo', 'Shih Tzu', '2017-03-18', 'Calm'),
(23473, 43678909, 'Coco', 'Chihuahua', '2022-08-09', 'Small but loud'),
(23474, 43678910, 'Buddy', 'German Shepherd', '2018-11-25', 'Protective'),
(23475, 43678911, 'Teddy', 'Cocker Spaniel', '2020-01-14', 'Very friendly');

-- =========================
-- 3. Appointments
-- =========================

TRUNCATE Appointments;
INSERT INTO Appointments (AppointmentID, ClientID, DogID, AppointmentDate, AppointmentTime, DurationMinutes, Status) VALUES
(1, 43678901, 23465, '2022-01-16', '08:00:00', 30, 'Scheduled'),
(2, 43678902, 23466, '2022-01-16', '09:00:00', 45, 'Completed'),
(3, 43678903, 23467, '2022-01-16', '10:00:00', 30, 'Scheduled'),
(4, 43678904, 23468, '2022-01-16', '11:00:00', 60, 'Completed'),
(5, 43678905, 23469, '2022-01-16', '12:00:00', 30, 'Cancelled'),
(6, 43678906, 23470, '2022-01-16', '13:00:00', 45, 'Scheduled'),
(7, 43678907, 23471, '2022-01-16', '14:00:00', 30, 'Completed'),
(8, 43678908, 23472, '2022-01-16', '15:00:00', 60, 'Scheduled'),
(9, 43678909, 23473, '2022-01-16', '16:00:00', 30, 'Completed'),
(10, 43678910, 23474, '2022-01-16', '17:00:00', 45, 'Scheduled'),
(11, 43678911, 23475, '2022-01-16', '18:00:00', 30, 'Completed');

-- =========================
-- 4. Payments
-- =========================
INSERT INTO Payments (PaymentID, AppointmentID, PaymentDate, PaymentMethod, Price, PaymentConfirmation) VALUES
(345678594, 1, '2022-01-16', 'Card', 30, 'Confirmed'),
(345678595, 2, '2022-01-16', 'Cash', 45, 'Confirmed'),
(345678596, 3, '2022-01-16', 'Card', 30, 'Pending'),
(345678597, 4, '2022-01-16', 'Card', 60, 'Confirmed'),
(345678598, 5, '2022-01-16', 'Cash', 30, 'Cancelled'),
(345678599, 6, '2022-01-16', 'Card', 45, 'Confirmed'),
(345678600, 7, '2022-01-16', 'Cash', 30, 'Confirmed'),
(345678601, 8, '2022-01-16', 'Card', 60, 'Pending'),
(345678602, 9, '2022-01-16', 'Card', 30, 'Confirmed'),
(345678603, 10, '2022-01-16', 'Cash', 45, 'Confirmed'),
(345678604, 11, '2022-01-16', 'Card', 30, 'Confirmed');

-- =========================
-- 5. Walk Logs
-- =========================
INSERT INTO Walk_Logs (LogID, DogID, AppointmentID, WalkDate, DistanceMiles, Notes) VALUES
(123, 23465, 1, '2022-01-20', 4, 'Very Friendly & well behaved'),
(124, 23466, 2, '2022-01-20', 2, 'Calm and obedient'),
(125, 23467, 3, '2022-01-20', 3, 'Playful'),
(126, 23468, 4, '2022-01-20', 5, 'Energetic'),
(127, 23469, 5, '2022-01-20', 2, 'Easily distracted'),
(128, 23470, 6, '2022-01-20', 4, 'Strong and active'),
(129, 23471, 7, '2022-01-20', 6, 'Needs lots of exercise'),
(130, 23472, 8, '2022-01-20', 1, 'Slow walker'),
(131, 23473, 9, '2022-01-20', 2, 'Barked frequently'),
(132, 23474, 10, '2022-01-20', 4, 'Alert and attentive'),
(133, 23475, 11, '2022-01-20', 3, 'Friendly with other dogs');