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

-- how many unique districts are our customers from
SELECT * FROM address;
SELECT COUNT(Distinct(district)) FROM address;

-- what are the names of those districts
SELECT Distinct(district) FROM address;

-- how many films have a rating of r and a replacement cost between 5 and 15
SELECT * FROM film;

SELECT * FROM film 
where rating = 'R' 
AND replacement_cost between 5 and 15;

-- how many films have the word truman somewhere in the tittle
SELECT * FROM film; 

select count(*) FROM film
WHERE title LIKE '%Truman%';
