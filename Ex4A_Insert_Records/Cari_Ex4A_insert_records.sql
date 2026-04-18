USE lana_dog_walking; 
INSERT INTO Clients (ClientID, PhoneNumber, Email, StreetAddress, City, State, ZipCode)
VALUES
('C051', '2015551234', 'jess.taylor@email.com', '45 River St Apt 2B', 'Hoboken', 'NJ', '07030'),
('C002', '2015552345', 'mark.lee@email.com', '12 Willow Ave', 'Jersey City', 'NJ', '07306'),
('C003', '2125553456', 'aisha.khan@email.com', '88 5th St', 'New York', 'NY', '10001'),
('C004', '2015554567', 'brian.smith@email.com', '19 Park Ave', 'Newark', 'NJ', '07102'),
('C005', '6465555678', 'sophie.chen@email.com', '200 Grove St', 'Hoboken', 'NJ', '07030'),
('C006', '5515556789', 'david.jones@email.com', '33 Hudson St', 'Weehawken', 'NJ', '07086'),
('C007', '9175557890', 'maria.garcia@email.com', '75 Washington Blvd', 'Jersey City', 'NJ', '07310'),
('C008', '9735558901', 'ethan.brown@email.com', '14 Maple Dr', 'Montclair', 'NJ', '07042'),
('C009', '2015559012', 'laura.white@email.com', '9 Pine St', 'Hoboken', 'NJ', '07030'),
('C010', '2125550123', 'james.wilson@email.com', '55 Broadway', 'New York', 'NY', '10006'),
('C011', '2015556781', 'olivia.martin@email.com', '22 Grand St', 'Jersey City', 'NJ', '07302'),
('C012', '2015556782', 'noah.davis@email.com', '310 Central Ave', 'Newark', 'NJ', '07103'),
('C013', '6465556783', 'emma.wilson@email.com', '18 Hudson Pl', 'Hoboken', 'NJ', '07030'),
('C014', '9175556784', 'liam.johnson@email.com', '99 6th Ave', 'New York', 'NY', '10013'),
('C015', '5515556785', 'ava.miller@email.com', '5 River Rd', 'Weehawken', 'NJ', '07086');
INSERT INTO Dogs (DogID, ClientID, DogName, Breed, BirthDate)
VALUES
('D001', 'C001', 'Buddy', 'Golden Retriever', '2020-06-15'),
('D002', 'C002', 'Luna', 'Labrador', '2019-03-22'),
('D003', 'C003', 'Max', 'Beagle', '2021-01-10'),
('D004', 'C004', 'Bella', 'Poodle', '2018-11-05'),
('D005', 'C005', 'Charlie', 'Bulldog', '2020-09-12'),
('D006', 'C006', 'Daisy', 'German Shepherd', '2019-07-30'),
('D007', 'C007', 'Rocky', 'Boxer', '2022-02-18'),
('D008', 'C008', 'Molly', 'Dachshund', '2021-05-25'),
('D009', 'C009', 'Cooper', 'Husky', '2018-12-14'),
('D010', 'C010', 'Sadie', 'Mixed Breed', '2020-08-08');
INSERT INTO Appointments (AppointmentID, ClientID, DogID, Date, Time, DurationMinutes, Status)
VALUES
(1001, 'C001', 'D001', '2026-04-20', '09:30:00', 60, 'Scheduled'),
(1002, 'C002', 'D002', '2026-04-20', '10:30:00', 45, 'Completed'),
(1003, 'C003', 'D003', '2026-04-21', '11:00:00', 30, 'Scheduled'),
(1004, 'C004', 'D004', '2026-04-21', '12:00:00', 60, 'Completed'),
(1005, 'C005', 'D005', '2026-04-22', '09:00:00', 45, 'Scheduled'),
(1006, 'C006', 'D006', '2026-04-22', '10:00:00', 60, 'Cancelled'),
(1007, 'C007', 'D007', '2026-04-23', '08:30:00', 30, 'Completed'),
(1008, 'C008', 'D008', '2026-04-23', '09:15:00', 45, 'Scheduled'),
(1009, 'C009', 'D009', '2026-04-24', '10:45:00', 60, 'Completed'),
(1010, 'C010', 'D010', '2026-04-24', '11:30:00', 30, 'Scheduled');
INSERT INTO Walk_Logs (LogID, DogID, AppointmentID, WalkDate, DistanceMiles, Notes)
VALUES
(5001, 'D001', 1001, '2026-04-20', 1.50, 'Calm walk'),
(5002, 'D002', 1002, '2026-04-20', 2.00, 'Very active'),
(5003, 'D003', 1003, '2026-04-21', 1.00, 'Short walk'),
(5004, 'D004', 1004, '2026-04-21', 1.75, 'Good behavior'),
(5005, 'D005', 1005, '2026-04-22', 1.25, 'Slight pulling'),
(5006, 'D006', 1006, '2026-04-22', 2.20, 'Energetic'),
(5007, 'D007', 1007, '2026-04-23', 1.10, 'Calm'),
(5008, 'D008', 1008, '2026-04-23', 1.60, 'Curious'),
(5009, 'D009', 1009, '2026-04-24', 2.50, 'High energy'),
(5010, 'D010', 1010, '2026-04-24', 1.30, 'Friendly');
INSERT INTO Payments (PaymentID, AppointmentID, PaymentDate, PaymentMethod, Price, PaymentConfirmation)
VALUES
(9001, 1001, '2026-04-20', 'Credit Card', 35.00, 'CONF-1001A'),
(9002, 1002, '2026-04-20', 'Cash', 30.00, 'CONF-1002B'),
(9003, 1003, '2026-04-21', 'Credit Card', 25.00, 'CONF-1003C'),
(9004, 1004, '2026-04-21', 'Debit Card', 40.00, 'CONF-1004D'),
(9005, 1005, '2026-04-22', 'Cash', 30.00, 'CONF-1005E'),
(9006, 1006, '2026-04-22', 'Credit Card', 45.00, 'CONF-1006F'),
(9007, 1007, '2026-04-23', 'Debit Card', 25.00, 'CONF-1007G'),
(9008, 1008, '2026-04-23', 'Credit Card', 35.00, 'CONF-1008H'),
(9009, 1009, '2026-04-24', 'Cash', 50.00, 'CONF-1009I'),
(9010, 1010, '2026-04-24', 'Credit Card', 30.00, 'CONF-1010J');
