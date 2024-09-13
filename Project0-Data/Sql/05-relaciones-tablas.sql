
-- Ejercicio  1: Encuentra el nombre de las pistas y los títulos de los álbumes a los que pertenecen.
select t."Track_Name", a."Title" titulo_album
from "Track" t 
inner join "Album" a on t."AlbumId" = a."AlbumId" ;

-- Ejercicio 2: Lista los nombres de los artistas y los títulos de sus álbumes. Ordena los resultados por artista.
select a."Name", al."Title" titulo_album from "Album" al
inner join "Artist" a  on a."ArtistId" = al."ArtistId" 
order by a."Name";

-- Ejercicio 3: Encuentra los nombres de los clientes y los totales de sus facturas. Extrae solo los 5 clientes con mayor total. 
select c."Name", sum(i."Total") suma_total from "Invoice" i
inner join "Customer" c on i."CustomerId" = c."ID"
group by c."Name"
order by sum(i."Total") desc
limit 5;

-- Ejercicio 4: Lista los nombres de los empleados y los nombres de los clientes que les han sido asignados.
select e."First_Name", c."Name" from "Employee" e 
inner join "Customer" c on e."EmployeeId" = c."SupportRepId" 
order by e."First_Name" ;

-- Ejercicio 5: Muestra los ID de las facturas y los nombres de las pistas incluidas en esas facturas.
select il."InvoiceId", t."Track_Name" from "InvoiceLine" il
inner join "Track" t on il."TrackId" = t."TrackId" ;

-- Ejercicio 6: Encuentra los nombres de los artistas y los géneros de sus pistas.
select distinct a2."Name", g."Genre_Name" from "Track" t 
inner join "Genre" g on g."GenreId" = t."GenreId" 
inner join "Album" a on a."AlbumId" = t."AlbumId"
inner join "Artist" a2 on a2."ArtistId" = a."ArtistId"
order by a2."Name";

--  Ejercicio 7: Muestra los nombres de las pistas y el tipo de medio en el que están disponibles.
select distinct t."Track_Name", mt."Name" from "Track" t 
inner join "MediaType" mt on mt."MediaTypeId" = t."MediaTypeId"
order by t."Track_Name";

-- Ejercicio 8: Encuentra todas las pistas y, si existen, muestra los nombres de los géneros a los que pertenecen. 
-- Incluye también las pistas que no tienen un género asignado.**
select t."TrackId", coalesce (g."Genre_Name", 'No tiene genero') Genre_Name from "Track" t 
left join "Genre" g on g."GenreId" = t."GenreId"
order  by t."TrackId";

-- Ejercicio 9: Muestra todos los clientes y, si existen, muestra las facturas que han realizado. 
-- Incluye también los clientes que no tienen ninguna factura.
select * from "Customer" c
left join "Invoice" i ON c."ID" = i."CustomerId" ;

-- Ejercico 10: Encuentra todos los álbumes y, si existen, muestra los nombres de los artistas que los crearon. 
-- Incluye también los álbumes que no tienen un artista asignado 
-- (aunque en este caso en la base de datos de Chinook, todos los álbumes tienen un artista asignado).
select a.* , a2."Name" from "Album" a 
left join "Artist" a2 on a."ArtistId"  = a2."ArtistId";

-- Ejercicio 11: Cuenta cuántas pistas hay en cada género. Ordena los generos en función del número de canciones de mayor a menor. 
select g."Genre_Name", count(t."TrackId") from "Track" t
inner join "Genre" g ON t."GenreId" = g."GenreId" 
group by g."Genre_Name"
order by count(t."TrackId") desc;

--  Ejercicio 12: Muestra los títulos de los álbumes y la duración total de todas las pistas en cada álbum.
select a."Title" , sum(t."Duration_Minutes") from "Track" t
inner join "Album" a ON t."AlbumId" = a."AlbumId" 
group by a."Title"
order by sum(t."Duration_Minutes") desc;

-- Ejercicio 14: Encuentra los nombres de los clientes y el total gastado por cada uno.
select c."ID", (select "Name" from "Customer" where "ID" = c."ID") Name ,sum(i."Total") total_gastado from "Invoice" i 
inner join "Customer" c on c."ID" = i."CustomerId"
group by c."ID"
order by sum(i."Total") desc;

-- Ejercicio 15: Encuentra todos los empleados y, si existen, muestra los nombres de los clientes que tienen asignados.
-- Incluye también los empleados que no tienen clientes asignados.
select e."EmployeeId", e."First_Name", e."Last_Name", e."Title" , c."Name" NameCustomer from "Employee" e 
left join "Customer" c on c."SupportRepId" = e."EmployeeId"
order by e."EmployeeId" 



