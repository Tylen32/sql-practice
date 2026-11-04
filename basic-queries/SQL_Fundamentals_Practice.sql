
-- Topic: Basic SELECT Statements
-- Database: PostgreSQL (dvdrental)

-- Exercise 1: Retrieve all customer information.
SELECT * FROM customer;

-- Exercise 2: Retrieve customer names and emails.
SELECT first_name,last_name,email FROM customer;

-- retrieves all film information
SELECT * FROM film;

-- returns distinct rating types for all films
SELECT DISTINCT rating FROM film;

-- retturns the number of distinct payment amounts
SELECT COUNT (DISTINCT amount) from payment;

-- return all films where rental rate is above 4 and rental replacement is above 19.99
SELECT * FROM film WHERE rental_rate > 4 AND replacement_cost > 19.99;

-- return all the movies rated r or pg 13
SELECT * FROM film WHERE rating = 'R' OR rating = 'PG-13';

-- what is the email of the customer named nancy thomas 
SELECT email FROM customer WHERE first_name = 'Nancy' AND last_name = 'Thomas';

-- what is the description of the film Ace Goldfinger
SELECT description FROM film WHERE title = 'Ace Goldfinger';
