USE sakila;
-- 1
SELECT first_name, last_name FROM actor
GROUP BY last_name
HAVING COUNT(last_name) = 1;

-- 2
SELECT first_name, last_name FROM actor
GROUP BY last_name
HAVING COUNT(last_name) > 1;

-- 3
SELECT DISTINCT staff_id FROM rental;
SELECT staff_id, COUNT(staff_id) AS processe_rental FROM rental
GROUP BY staff_id;

-- 4
SELECT release_year, COUNT(title) AS release_number FROM film
GROUP BY release_year;

-- 5
SELECT rating, COUNT(title) AS film_number FROM film
GROUP BY rating;

-- 6
SELECT rating, ROUND(AVG(length),2) AS mean_length FROM film
GROUP BY rating;

-- 7
SELECT rating, ROUND(AVG(length),2) AS mean_length FROM film
GROUP BY rating
HAVING mean_length > 120;

-- 8
SELECT title, length, RANK() OVER (ORDER BY length) AS 'rank'
FROM film
WHERE length IS NOT NULL AND length > 0;
