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

