INSERT INTO actor(actor_id, first_name, last_name, last_uptade)
VALUES("201","Miguel","Diaz", "2025-04-15 16:09:14")
/*Todo esto para insertar 1 cosa en una carpeta*/

UPDATE actor
set first_name = "Gabriel", last_name = "Valeriano"
WHERE last_name = "Diaz" AND first_name = "Miguel"
/*Todo esto es para poder modificar el archivo que Insertamos*/

DELETE FROM actor
WHERE actor_id = 201
/*Todo esto para borrar datos de la columna, por el ID*/

