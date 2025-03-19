USE sakila;

#1. Find the names of all customers who rented the film "Jaws".

SELECT DISTINCT c.first_name, c.last_name
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
WHERE f.title = 'Jaws';

SELECT * FROM actor;

#2.List all films directed by a specific actor (e.g., 'JOHNNY CAGE').

SELECT f.title AS Film_Title
FROM film f 
JOIN film_actor fa ON f.film_id = fa.film_id
JOIN actor a ON a.actor_id =  fa.actor_id
WHERE a.first_name = 'JOHNNY'
 AND a.last_name = 'CAGE';
 
 #3. Retrieve the names of all actors who have appeared in the film "Academy Dinosaur".
 
 SELECT a.first_name, a.last_name
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.film_id
JOIN film f ON f.film_id =  fa.film_id
WHERE f.title = 'Academy Dinosaur';

#4. Find the names of all customers who rented films in the "Horror" genre.

SELECT * FROM category;

SELECT c.first_name, c.last_name
FROM customer c
JOIN rental r ON r.customer_id = c.customer_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
JOIN film_category fc ON fc.film_id = f.film_id
JOIN category cat ON fc.category_id = cat.category_id
WHERE cat.name = 'Horror';

#5. List all films that were rented by the customer with customer_id = 1.

SELECT DISTINCT f.title #distinct means unique
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
WHERE r.customer_id = 1;





