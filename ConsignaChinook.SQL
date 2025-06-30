/*1) Nombre y Apellido de todos los empleados, en orden alfabético.*/
SELECT FirstName, LastName FROM Employees
ORDER BY LastName ASC, FirstName ASC;
/*2) Nombre y duración de todas las canciones del álbum 
"Big Ones" ordenados del más largo al más corto
*/
SELECT Name, Milliseconds FROM tracks
WHERE AlbumId = (
 SELECT AlbumId
    FROM albums
    WHERE Title = 'Big Ones'
)
ORDER BY Milliseconds DESC;
/*3) Nombre de todos los géneros con la cantidad de canciones de cada uno*/
SELECT genres.Name AS Genre, COUNT(tracks.TrackId) AS SongCount FROM genres
INNER JOIN tracks ON genres.GenreId = tracks.GenreId
GROUP BY genres.Name
ORDER BY SongCount DESC;
/*4)Nombre de los discos con al menos 5 canciones*/
SELECT albums.Title AS Album, COUNT(tracks.TrackId) AS TrackCount FROM albums
INNER JOIN tracks ON albums.AlbumId = tracks.AlbumId
GROUP BY albums.Title
HAVING COUNT(tracks.TrackId) >= 5
ORDER BY TrackCount DESC;
/*5) Nombre y precio total de los 10 discos más baratos*/
SELECT albums.Title AS Album, SUM(tracks.UnitPrice) AS TotalPrice FROM albums
INNER JOIN tracks ON albums.AlbumId = tracks.AlbumId
GROUP BY albums.AlbumId
ORDER BY TotalPrice ASC
LIMIT 10;
/*6) Nombre del tema, nombre del género y nombre del disco del los temas que valen $0.99*/
SELECT 
t.name AS TrackName,
g.name AS GenreName,
a.title AS AlbumTitle
FROM 
tracks t
INNER JOIN 
genres g ON t.genreid = g.genreid
INNER JOIN 
albums a ON t.albumid = a.albumid
WHERE 
t.unitprice = 0.99;
/*7) Nombre del tema, duración, nombre del disco y nombre del artista de los 20 temas más cortos*/
SELECT 
t.name AS TrackName,
t.milliseconds AS DurationMs,
a.title AS AlbumTitle,
ar.name AS ArtistName
FROM 
tracks t
INNER JOIN 
albums a ON t.albumid = a.albumid
INNER JOIN 
artists ar ON a.artistid = ar.artistid
ORDER BY 
t.milliseconds ASC
LIMIT 20;
/*8) Apellido, puesto, apellido del jefe y cantidad de clientes que atiende de todos los empleados, 
ordenado desde los que atienden más clientes a los que atienden menos*/
SELECT 
e.lastname AS EmployeeLastName,
e.title AS JobTitle,
m.lastname AS ManagerLastName,
COUNT(c.customerid) AS ClientsCount
FROM 
employees e
LEFT JOIN 
employees m ON e.reportsto = m.employeeid
LEFT JOIN 
customers c ON e.employeeid = c.supportrepid
GROUP BY 
e.employeeid
ORDER BY 
ClientsCount DESC;
/*9) Insertar cuatro (4) canciones que les gusten.*/
INSERT INTO tracks (Name, AlbumId, MediaTypeId, GenreId, Composer, Milliseconds, Bytes, UnitPrice)
VALUES
('Superman', 1, 1, 1, 'Eminem', 350000, 7000000, 0.99),
('Borderline', 1, 1, 1, 'Tame Impala', 240000, 6000000, 0.99),
('Smells Like Teen Spirit', 1, 1, 1, 'Kurt Cobain', 301000, 6500000, 0.99),
('Beautiful Girl', 1, 1, 1, 'Sean Kingston', 297000, 6400000, 0.99);
/*10) Mostrar las cuatro canciones ingresadas.*/
SELECT 
Name AS TrackName, Composer, Milliseconds, Bytes, UnitPrice
FROM tracks
WHERE Name IN ('Superman','Borderline','Smells Like Teen Spirit','Till I Collapse');
/*11) Modifiquen dos (2) canciones por otras que se les ocurran.*/
UPDATE tracks
SET 
Name = 'Creep',
Composer = 'Radiohead',
Milliseconds = 238000,
Bytes = 5800000
WHERE 
Name = 'Superman';
UPDATE tracks
SET 
Name = 'FEEL ME?',
Composer = 'Trueno',
Milliseconds = 210000,
Bytes = 5200000
WHERE 
Name = 'Borderline';
/*12) Mostrar las dos (2) canciones modificadas.*/
SELECT 
Name AS TrackName,
Composer,
Milliseconds,
Bytes,
UnitPrice
FROM tracks
WHERE 
Name IN ('Creep', 'FEEL ME?');