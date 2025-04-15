Actividad 1
    SELECT f.title, address, city, country  FROM film f
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

Actividad 2
    SELECT f.title, c.name, l.name, rating, length  
    FROM film f
    INNER JOIN film_category fc
    ON f.film_id = fc.film_id
    INNER JOIN category c
    ON fc.category_id = c.category_id
    INNER JOIN language l 
    ON f.language_id = l.language_id
    --WHERE length BETWEEN 60 AND 120 (esta parte es mas corta pero se pueden usar las 2 formas, de esta fila o la forma de abajo)
    WHERE length >=60 AND length <=120

Actvidad 3
