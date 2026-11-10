-- we have 2 staff members with staff id 1 and 2. We want to give a bonus to the staff member who handled the most payments(in terms of payments proccessed)
-- how many payments did each staff member handle 
SELECT * FROM payment; 

select staff_id, COUNT(payment_id) FROM payment
GROUP BY staff_id;

-- what are the customer ids of the top 5 customers by total spend
SELECT * FROM payment; 

select customer_id, SUM(amount) FROM payment
GROUP BY customer_id
ORDER BY SUM(amount)DESC
LIMIT 5;

-- What are the customer ids of customers who have 40 or more transactions
SELECT * FROM payment; 

select customer_id, COUNT(payment_id) FROM payment
GROUP BY customer_id
HAVING COUNT(payment_id) > 39;

-- what are the customer ids of customers who spent more than 100 in transactions with staff_id member 2
SELECT * FROM payment; 

select customer_id, SUM(amount) FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 100;

--1. Return the customer IDs of customers who have spent at least $110 with the staff member who has an ID of 2.
SELECT * FROM payment; 

select customer_id, SUM(amount) FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) >= 110;

--How many films begin with the letter J?
SELECT * FROM film; 

select COUNT(title) FROM film
WHERE title like 'J%';

