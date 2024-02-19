-- We shall drop the database incase there is a similar db
DROP DATABASE IF EXISTS msafiri_airlines;

-- Create our database
CREATE DATABASE msafiri_airlines;

-- Create the airports table now
CREATE TABLE IF NOT EXISTS airport (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    airport_code VARCHAR(5) UNIQUE,
    airport_name VARCHAR(50),
    airport_location VARCHAR(50)
);

-- Create the flight table
CREATE TABLE IF NOT EXISTS flight (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    departure DATE,
    arrival DATE,
    available_seats INT,
    airport_code VARCHAR(5),
    CONSTRAINT airport_id_fk FOREIGN KEY(airport_code) REFERENCES airport(airport_code)
);

-- Create the passenger table. Include a foreign key as well
CREATE TABLE IF NOT EXISTS passenger (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    gender VARCHAR(10),
    phone_number VARCHAR(20),
    passport_number VARCHAR(20),
    flight_id INT,
    CONSTRAINT flight_id_fk FOREIGN KEY(flight_id) REFERENCES flight(id)
);

-- Create the reservations table
CREATE TABLE IF NOT EXISTS reservation (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    passenger_id INT,
    flight_id INT,
    reservation_datetime TIMESTAMP,
    seats_assigned INT,
    booking_status BOOLEAN,
    CONSTRAINT passenger_id_fk FOREIGN KEY(passenger_id) REFERENCES passenger(id),
    CONSTRAINT flight_id_fk FOREIGN KEY(flight_id) REFERENCES flight(id)
);

-- Create the tickets table
CREATE TABLE IF NOT EXISTS tickets (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    passenger_id INT,
    flight_id INT,
    seat_number INT,
    class VARCHAR(10),
    ticket_price DECIMAL(10, 2),
    date_issued TIMESTAMP,
    CONSTRAINT passenger_id_fk FOREIGN KEY(passenger_id) REFERENCES passenger(id),
    CONSTRAINT flight_id_fk FOREIGN KEY(flight_id) REFERENCES flight(id)
);

-- Create the payment table now
CREATE TABLE IF NOT EXISTS payment (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    reservation_id INT,
    amount_paid DECIMAL(10, 2),
    payment_date TIMESTAMP,
    payment_method VARCHAR(30),
    transaction_status BOOLEAN,
    CONSTRAINT reservation_id_fk FOREIGN KEY(reservation_id) REFERENCES reservation(id)
);