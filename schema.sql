-- We shall drop the database incase there is a similar db

DROP DATABASE msafiri_airlines;

-- Create our database

CREATE DATABASE IF NOT EXISTS msafiri_airlines;

-- Create the flight table

CREATE TABLE IF NOT EXISTS flight(
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    departure DATE,
    arrival DATE,
    available_seats INT,
    airport_code VARCHAR(5)
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
    CONSTRAINT flight_id_fk FOREIGN KEY(flight_number) REFERENCES flight(id),
);