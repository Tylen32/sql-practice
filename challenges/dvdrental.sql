-- Topic: challenges
-- Database: PostgreSQL (dvdrental)

--how many payment transactions were greater than 5.00
SELECT * FROM payment;

SELECT count(*) from payment
where amount > 5.00;

-- how many actors have the first name that starts with the letter p

SELECT * FROM actor;

SELECT COUNT(*) FROM actor
where first_name LIKE 'P%';
