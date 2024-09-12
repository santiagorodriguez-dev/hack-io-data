
-- Ejercicio  1: Encuentra el nombre de las pistas y los títulos de los álbumes a los que pertenecen.
select t."Track_Name", a."Title" titulo_album
from "Track" t 
inner join "Album" a on t."AlbumId" = a."AlbumId" ;

select t."Track_Name", a."Title" titulo_album
from "Album" a
inner join "Track" t on t."AlbumId" = a."AlbumId" ;

-- Ejercicio 2: Lista los nombres de los artistas y los títulos de sus álbumes. Ordena los resultados por artista.
select a."Name", al."Title" titulo_album from "Album" al
inner join "Artist" a  on a."ArtistId" = al."ArtistId" 
order by a."Name";

-- Ejercicio 3: Encuentra los nombres de los clientes y los totales de sus facturas. Extrae solo los 5 clientes con mayor total. 
select c."Name", i."Total" from "Invoice" i
inner join "Customer" c on i."CustomerId" = c."ID" 
order by i."Total" desc 
limit 5;

-- Ejercicio 4: Lista los nombres de los empleados y los nombres de los clientes que les han sido asignados.
select e."First_Name", c."Name" from "Employee" e 
inner join "Customer" c on e."EmployeeId" = c."SupportRepId" 
order by e."First_Name" ;

-- Ejercicio 5: Muestra los ID de las facturas y los nombres de las pistas incluidas en esas facturas.


-- Ejercicio 6: Encuentra los nombres de los artistas y los géneros de sus pistas.


--  Ejercicio 7: Muestra los nombres de las pistas y el tipo de medio en el que están disponibles.


-- Ejercicio 8: Encuentra todas las pistas y, si existen, muestra los nombres de los géneros a los que pertenecen. Incluye también las pistas que no tienen un género asignado.**


-- Ejercicio 9: Muestra todos los clientes y, si existen, muestra las facturas que han realizado. Incluye también los clientes que no tienen ninguna factura.


-- Ejercico 10: Encuentra todos los álbumes y, si existen, muestra los nombres de los artistas que los crearon. Incluye también los álbumes que no tienen un artista asignado (aunque en este caso en la base de datos de Chinook, todos los álbumes tienen un artista asignado).


-- Ejercicio 11: Cuenta cuántas pistas hay en cada género. Ordena los generos en función del número de canciones de mayor a menor. 


--  Ejercicio 12: Muestra los títulos de los álbumes y la duración total de todas las pistas en cada álbum.


-- Ejercicio 14: Encuentra los nombres de los clientes y el total gastado por cada uno.


-- Ejercicio 15: Encuentra todos los empleados y, si existen, muestra los nombres de los clientes que tienen asignados. Incluye también los empleados que no tienen clientes asignados.



