
-- Ejercicio 1: Seleccionar todos los campos de la tabla `customers` y renombrar la columna `CustomerId` a `ID`.
select * from "Customer" c;

ALTER TABLE "Customer"
RENAME COLUMN "CustomerId" TO "ID";

-- Ejercicio 2: Seleccionar los nombres de los clientes (`FirstName`, `LastName`) y renombrar las columnas a `First_Name` y `Last_Name`.
select "FirstName", "LastName" from "Customer" c;

ALTER TABLE "Customer"
RENAME COLUMN "FirstName" TO "First_Name";

ALTER TABLE "Customer"
RENAME COLUMN "LastName" TO "Last_Name";

-- Ejercicio 3: Seleccionar los títulos de las pistas (`Name`) que duran más de 300,000 milisegundos y renombrar la columna a `Track_Title`.
select  "Name" from "Track" t 
where "Milliseconds" > 300000;

ALTER TABLE "Track"
RENAME COLUMN "Name" TO "Track_Title";

-- Ejercicio 4: Seleccionar el nombre y el correo electrónico de los clientes que viven en Brasil y renombrar las columnas a `Name` y `Email_Address`.
select "First_Name", "Email" from "Customer" c
where "Country" = 'Brazil';

ALTER TABLE "Customer"
RENAME COLUMN "First_Name" TO "Name";

ALTER TABLE "Customer"
RENAME COLUMN "Email" TO "Email_Address";

-- Ejercicio 5: Seleccionar los nombres de las playlists (`Name`) que contienen la palabra 'Music' y renombrar la columna a `Playlist_Name`.
select  "Name" from "Playlist" t 
where "Name" = 'Music';

ALTER TABLE "Playlist"
RENAME COLUMN "Name" TO "Playlist_Name";

-- Ejercicio 6: Seleccionar los nombres de los empleados (`FirstName`, `LastName`) que trabajan como 'Sales Support Agent' y renombrar las columnas a `First_Name` y `Last_Name`.
select "FirstName" , "LastName" from "Employee" e
where "Title" = 'Sales Support Agent'

ALTER TABLE "Employee"
RENAME COLUMN "FirstName" TO "First_Name";

ALTER TABLE "Employee"
RENAME COLUMN "LastName" TO "Last_Name";

-- Ejercicio 7: Seleccionar los nombres de los géneros (`Name`) y renombrar la columna a `Genre_Name`.
select "Name" from "Genre" g;

ALTER TABLE "Genre"
RENAME COLUMN "Name" TO "Genre_Name";

-- Ejercicio 8: Seleccionar los nombres de los empleados (`FirstName`, `LastName`) que reportan al empleado con `EmployeeId` = 1 y renombrar las columnas a `First_Name` y `Last_Name`.
select "First_Name", "Last_Name" from "Employee" e
where "ReportsTo" = 1;

-- Ejercicio 9: Seleccionar los nombres de las pistas (`Name`) y su duración en minutos (convertido de milisegundos) que duran más de 5 minutos y renombrar las columnas a `Track_Name` y `Duration_Minutes`.
select  "Track_Title", ("Milliseconds" / 60000) minutes from "Track" t 
where "Milliseconds" > 300000;

ALTER TABLE "Track"
RENAME COLUMN "Track_Title" TO "Track_Name";

ALTER TABLE "Track"
RENAME COLUMN "Milliseconds" TO "Duration_Minutes";

-- Ejercicio 10: Encuentra las pistas que tienen un precio mayor a 1.00 y una duración menor a 300,000 milisegundos. Muestra el nombre de la pista y su duración.
select  "Track_Name", ("Duration_Minutes" / 60000) Duration_Minutes from "Track" t 
where "Duration_Minutes" > 300000
and "UnitPrice" > 1;

-- Ejercicio 11: Lista los empleados que trabajan en la ciudad 'Seattle' y cuyo estado es 'WA'. Muestra el nombre y el apellido del empleado.
select "First_Name" , "Last_Name" from "Employee" e
where "City" = 'Seattle'
and "State" = 'WA';

-- Ejercicio 12: Encuentra los clientes que están en el país 'USA' y tienen asignado un representante de soporte con un ID mayor o igual a 5. Muestra el nombre del cliente y su ID de soporte.
select "Name" , "SupportRepId" from "Customer" c
where "Country" = 'USA'
and "SupportRepId" >= 5;

-- Ejercicio 13: Selecciona las facturas que tienen un total mayor a 10.00 y pertenecen a clientes con ID menor a 50. Muestra el ID de la factura y el total.
select "InvoiceId", "Total" from "Invoice" i
where "Total"  > 10
and "CustomerId" < 50;

-- Ejercicio 14: Lista las pistas que tienen una duración mayor a 250,000 milisegundos y pertenecen a un tipo de medio con ID 1 o 2. Muestra el nombre de la pista y el tipo de medio.
select  "Track_Name", "MediaTypeId" from "Track" t 
where "Duration_Minutes" > 250000
and ("MediaTypeId" = 1 or "MediaTypeId" = 2);
