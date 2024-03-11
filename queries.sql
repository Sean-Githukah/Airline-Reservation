-- List all the Passengers with Their Reservation Details

SELECT p.first_name, p.last_name, r.reservation_datetime, r.seats_assigned, r.booking_status
FROM passenger p JOIN reservation r ON p.id = r.passenger_id;

--  List all the Flights with Available Seats

SELECT f.id, f.departure, f.arrival, f.available_seats, a.airport_name
FROM flight f JOIN airport a ON f.airport_code = a.airport_code
WHERE f.available_seats > 0;

-- List all the Passengers with their Ticket Details
SELECT p.first_name, p.last_name, t.seat_number, t.class, t.ticket_price
FROM passenger p JOIN tickets t ON p.id = t.passenger_id;

--  List all the Flights with their Reservation Count
SELECT f.id, f.departure, f.arrival, COUNT(r.id) AS reservation_count
FROM flight f LEFT JOIN reservation r ON f.id = r.flight_id
GROUP BY f.id, f.departure, f.arrival;

-- List all the payment Statuses for all the Reservations
SELECT r.id AS reservation_id, p.amount_paid, p.payment_method, p.transaction_status
FROM reservation r JOIN payment p ON r.id = p.reservation_id;

--  List all the Passengers with Their Departure Airport
SELECT p.first_name, p.last_name, a.airport_name AS departure_airport
FROM passenger p JOIN flight f ON p.flight_id = f.id
JOIN airport a ON f.airport_code = a.airport_code;

-- List all the total Revenue Generated from the Ticket Sales
SELECT SUM(t.ticket_price) AS total_revenue FROM tickets t;


-- List all the Passengers with Their Reservation Status
SELECT p.first_name, p.last_name, r.booking_status
FROM passenger p JOIN reservation r ON p.id = r.passenger_id;