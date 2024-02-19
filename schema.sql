-- We shall drop the database incase there is a similar db

DROP DATABASE msafiri_airlines;

-- Create our database

CREATE DATABASE IF NOT EXISTS msafiri_airlines;

-- Create the airports table now

CREATE TABLE IF NOT EXISTS airport(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    airport_code VARCHAR(5) UNIQUE,
    airport_name VARCHAR(20),
    airport_location VARCHAR(20),
)

-- Create the flight table

CREATE TABLE IF NOT EXISTS flight(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    departure DATE,
    arrival DATE,
    available_seats INT,
    airport_code VARCHAR(5),
    CONSTRAINT airport_id_fk FOREIGN KEY(airport_code) REFERENCES airport(airport_code)
);

-- Create the passanger table. Include a foreigh key as well

CREATE TABLE IF NOT EXISTS passanger(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    date_of_birth DATE,
    gender VARCHAR(20),
    phone_number VARCHAR(20),
    passport_number VARCHAR(20),
    flight_number INT,
    CONSTRAINT flight_id_fk FOREIGN KEY(flight_number) REFERENCES flight(id)
);

-- Create the reservations table

CREATE TABLE IF NOT EXISTS reservation(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    passanger_id INT,
    flight_number INT,
    reservation_datetime DATETIME,
    seats_assigned INT,
    booking_status BOOLEAN,
    CONSTRAINT passanger_id_fk FOREIGN KEY(passanger_id) REFERENCES passanger(id),
    CONSTRAINT flight_id_fk FOREIGN KEY(flight_number) REFERENCES flight(id)
);
