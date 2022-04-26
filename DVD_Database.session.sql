--1. How many actors are there with the last name ‘Wahlberg’? 2
-- SELECT last_name
-- FROM actor
-- WHERE last_name = 'Wahlberg'

--2. How many payments were made between $3.99 and $5.99? 10476
-- SELECT COUNT(amount)
-- FROM payment
-- WHERE amount BETWEEN 2.00 AND 7.99


--3. What film does the store have the most of? (search in inventory)8
-- SELECT film_id, COUNT(film_id) 
-- FROM inventory
-- GROUP BY film_id
-- ORDER BY 1 DESC 



-- 4. How many customers have the last name ‘William’? 0
-- SELECT last_name
-- FROM customer
-- WHERE last_name = 'William'


-- 5. What store employee (get the id) sold the most rentals? staff_id 1
-- SELECT staff_id,COUNT(staff_id)
-- FROM rental
-- GROUP BY staff_id
-- ORDER BY 1

-- 6. How many different district names are there? 378
-- SELECT COUNT(DISTINCT district)
-- FROM address


-- 7. What film has the most actors in it? (use film_actor table and get film_id)
-- SELECT *
-- FROM film_actor
-- GROUP BY film_id, actor_id
-- ORDER BY 1 DESC


-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)13
-- SELECT last_name, store_id = 1
-- FROM customer
-- WHERE last_name LIKE '%es'
-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)9
-- SELECT COUNT(amount)
-- FROM payment
-- GROUP BY amount
-- HAVING COUNT(rental_id) > 250

-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total? 5 Categories   ,  PG-13 Has most Movies total 
-- SELECT rating, COUNT(rating)
-- FROM film
-- GROUP BY rating
-- ORDER BY 1 DESC