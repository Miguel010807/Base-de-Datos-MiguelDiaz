Actividad 1
    SELECT f.title, a.address, c.city, co.country
    FROM film f
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

--"AS" es para renombrar los nombres en la TABLA 
Actvidad 3
    SELECT s.first_name AS Nombre, s.last_name AS Apellido, ad.address AS Dirección, c.city AS Ciudad, co.country AS Pais
    FROM staff s
    INNER JOIN address ad
    ON s.address_id = ad.address_id
    INNER JOIN city c
    ON ad.city_id = c.city_id
    INNER JOIN country co
    ON c.country_id = co.country_id

Actividad 4
    SELECT f.title AS Titulo, min(r.return_date),max(r.return_date) 
    FROM film f
    INNER JOIN inventory i
    ON f.film_id = i.film_id
    INNER JOIN rental r
    ON i.inventory_id = r.inventory_id

Actividad 5

    En el SQL Sakila si se puede juntar todas las tablas

Actividad 6
    SELECT COUNT(f.film_id),rating
    FROM film f 
    GROUP BY rating

Actividad 7
    SELECT COUNT(f.film_id), c.name AS Categoria
    FROM film f 
    INNER JOIN film_category fi
    ON f.film_id = fi.film_id
    INNER JOIN category c
    ON fi.category_id = c.category_id
    GROUP BY fi.category_id
Actividad 8
    SELECT COUNT(f.film_id) AS Peliculas, a.first_name AS Nombre, a.last_name AS Apellido
    FROM film f
    INNER JOIN film_actor fi
    ON f.film_id = fi.film_id
    INNER JOIN actor a
    ON fi.actor_id = a.actor_id
    GROUP BY f.film_id
    ORDER BY Peliculas DESC

Actividad 9
    


Actividad 10


Actividad 11


Actividad 12


Actividad 13


Actividad 14




