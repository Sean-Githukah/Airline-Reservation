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