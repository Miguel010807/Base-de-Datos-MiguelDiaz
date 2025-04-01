SELECT f.film_md FROM film f
INNER JOIN inventory i
ON f.film_id = i.film_id
INNER JOIN store s 
ON i.store_id = s.store_id
INNER JOIN address a
ON s.address_id = a.address_id
INNER JOIN city c
ON a.city_id = c.city_id
INNER JOIN country co
ON c.country_id = co.country_id
--WHERE TITLE