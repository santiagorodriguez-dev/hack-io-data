
-- Ejercicio 1:  Selecciona el nombre de todos los álbumes y ordénalos alfabéticamente.
select "Title" from "Album" a
order by "Title";

-- Ejercicio 2:  Encuentra el álbum con el mayor número de canciones.
select t."AlbumId", count(t."AlbumId") numero_canciones from "Track" t
group by t."AlbumId"
order by numero_canciones desc
LIMIT 1;

-- Ejercicio 3:  Calcula la duración promedio, desviación estándar y varianza por compositor.
select t."Composer", 
avg(t."Duration_Minutes") duracion_promedio, 
stddev(t."Duration_Minutes") desviacion_estandar, 
variance(t."Duration_Minutes") varianza from "Track" t
group by t."Composer";

-- Ejercicio 4: Selecciona el título y el precio de las pistas, y limita los resultados a 10.
select t."Track_Name" , t."UnitPrice" 
from "Track" t
LIMIT 10;
   
-- Ejercicio 5: Lista los nombres de los empleados y ordénalos por el ID del empleado en orden descendente.
select "First_Name" from "Employee" e
order by "EmployeeId" desc ;

-- Ejercicio 6:  Muestra el número de géneros distintos disponibles en la base de datos.
select count(distinct "Genre_Name" ) from "Genre" g;

-- Ejercicio 7: Selecciona el nombre del cliente y el país, limitando los resultados a 5, y ordena por el nombre del cliente.
select "Name","Country" from "Customer" c
order by "Name" 
limit 5;
    
-- Ejercicio 8: Muestra la cantidad total de clientes agrupados por país.
select "Country", count(distinct "ID") total_clientes from "Customer" c
group by ("Country");

-- Ejercicio 9: Obtén el total de importes de facturas para cada país y muestra solo aquellos con un total superior a 10,000.
select "BillingCountry", sum("Total") suma_total from "Invoice" i
group by ("BillingCountry")
having sum("Total")  > 10; 

-- Ejercicio 10: Encuentra los países donde el número total de clientes es mayor a 5. Muestra el país y el número de clientes.
select "Country" , count("ID") total from "Customer" c
group by "Country"
having count("ID") > 5;

-- Ejercicio 11: Obtén la cantidad de pistas en cada tipo de medio (MediaType) que tienen una duración mayor a 250,000 milisegundos.
select t."MediaTypeId", count(t."TrackId") from "Track" t
where t."Duration_Minutes" > 250000
group by t."MediaTypeId";

-- Ejercicio 12: Lista el país y el número total de clientes que han sido asistidos por un representante de ventas específico, cuyo ID sea menor a 5.
select "Country", count(distinct "ID") total_clientes from "Customer" c
where c."SupportRepId" < 5
group by ("Country"); 

-- Ejercicio 13: Muestra los códigos postales (BillingPostalCode) de los clientes que han hecho más de 5 compras.
select "BillingPostalCode"  from "Invoice" i
group by ("BillingPostalCode")
having count("CustomerId") > 5;   

-- Ejercicio 14: Encuentra la cantidad total de pistas en cada tipo de medio (MediaTypeId) 
-- donde el precio de la pista (UnitPrice) es mayor a 0.99 y la duración de la pista (Milliseconds) 
-- es mayor a 200,000. Muestra el tipo de medio y el número total de pistas.
select t."MediaTypeId", count(t."TrackId") from "Track" t
where t."Duration_Minutes" > 200000
and t."UnitPrice" > 0.99 
group by t."MediaTypeId";

-- Ejercicio 15: Lista el país y el estado de los clientes que tienen el soporte 
-- asignado a un representante con ID mayor a 3 y cuyo nombre de empresa (Company) no es nulo. 
-- Muestra el país, el estado y el número de clientes.
select "Country", "State", count("ID") numero_de_clientes from "Customer" c
where  "SupportRepId" > 3
and "Company" IS NOT null
group by "Country", "State" ;

