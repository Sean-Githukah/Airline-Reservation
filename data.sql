-- Insert data into the airports table

INSERT INTO airport (airport_code, airport_name, airport_location) VALUES
('NBO', 'Jomo Kenyatta International Airport', 'Nairobi'),
('MBA', 'Moi International Airport', 'Mombasa'),
('KIS', 'Kisumu International Airport', 'Kisumu'),
('WIL', 'Wilson Airport', 'Nairobi'),
('HKR', 'Homa Bay Airport', 'Homa Bay');

-- Insert data into the flights table

INSERT INTO flight (departure, arrival, available_seats, airport_code) VALUES
('2024-03-15', '2024-03-15', 200, 'NBO'),
('2024-03-16', '2024-03-16', 180, 'MBA'),
('2024-03-17', '2024-03-17', 220, 'KIS'),
('2024-03-18', '2024-03-18', 250, 'WIL'),
('2024-03-19', '2024-03-19', 300, 'HKR');

-- Insert data into the passanger table

INSERT INTO passenger (first_name, last_name, date_of_birth, gender, phone_number, passport_number, flight_id) VALUES
('John', 'Wanjiku', '1990-05-15', 'Male', '+254765342265', 'ABC123456', 1),
('Jane', 'Nyambura', '1985-08-20', 'Female', '+254712345678', 'XYZ987654', 2),
('Michael', 'Ochieng', '1978-12-10', 'Male', '+254701234567', 'DEF456789', 3),
('Emily', 'Mwangi', '1998-03-25', 'Female', '+254736548956', 'GHI987654', 4),
('David', 'Achieng', '2000-09-05', 'Male', '+254725489632', 'JKL123456', 5),
('Jane', 'Maina', '1995-06-18', 'Female', '+254710203040', 'XYZ987654', 6),
('John', 'Njeri', '1982-11-30', 'Male', '+254718293847', 'ABC123456', 7),
('Emily', 'Kiprop', '1990-03-15', 'Female', '+254789456123', 'GHI987654', 8),
('Michael', 'Kamau', '1975-09-20', 'Male', '+254775854369', 'DEF456789', 9),
('David', 'Atieno', '1999-07-05', 'Male', '+254763299821', 'JKL123456', 10);


-- Insert data into the reservations table

INSERT INTO reservation (passenger_id, flight_id, reservation_datetime, seats_assigned, booking_status) VALUES
(1, 1, '2024-03-15 10:00:00', 1, true),
(2, 2, '2024-03-16 11:00:00', 2, true),
(3, 3, '2024-03-17 12:00:00', 1, true),
(4, 4, '2024-03-18 13:00:00', 3, true),
(5, 5, '2024-03-19 14:00:00', 1, false),
(6, 6, '2024-03-20 15:00:00', 1, false),
(7, 7, '2024-03-21 16:00:00', 2, true),
(8, 8, '2024-03-22 17:00:00', 1, false),
(9, 9, '2024-03-23 18:00:00', 3, true),
(10, 10, '2024-03-24 19:00:00', 1, false);