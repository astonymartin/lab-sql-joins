USE sakila;

### 1. List the number of films per category.

SELECT category_id, COUNT(DISTINCT film.film_id) AS number_of_films FROM sakila.film JOIN sakila.film_category ON film.film_id = film_category.film_id GROUP BY category_id;


### 2. Retrieve the store ID, city, and country for each store.

SELECT store_id, city, country FROM sakila.store JOIN sakila.address ON sakila.store.address_id = sakila.address.address_id JOIN sakila.city ON sakila.address.city_id = sakila.city.city_id JOIN sakila.country ON sakila.city.country_id = sakila.country.country_id ;

### 3. Calculate the total revenue generated by each store in dollars.

SELECT staff_id AS "STORE", SUM(amount) AS "TOTAL REVENUE" FROM sakila.payment GROUP BY staff_id;

### 4. Determine the average running time of films for each category.

SELECT category_id, AVG(length) AS "AVG RUNNING" FROM sakila.film JOIN sakila.film_category ON sakila.film.film_id = sakila.film_category.film_id GROUP BY category_id;

