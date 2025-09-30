-- 1.Mostrar los clientes que vivan en Mexico. Ordenarlos por Nombre de Contacto de forma Ascendente.

SELECT * FROM Customers
WHERE Country='Mexico'
ORDER BY Contactname;

-- 2.Mostrar los clientes que no tengan Fax. Ordenarlos por Pais

SELECT * FROM Customers
WHERE Fax IS NULL
ORDER BY Country;

 -- 3. Mostrar los clientes cuyo nombre de contacto empieza con la letra H. Ordenarlos por ciudad.

SELECT * FROM Customers
WHERE ContactName LIKE 'H%'
ORDER BY Country;

 -- 3.Mostrar los clientes cuya ciudad tenga una letra ‘Z’. Ordenarlos por Pais de forma descendente.

SELECT * FROM Customers
WHERE City LIKE '%Z%'
ORDER BY Country DESC;

-- 4.Mostrar los empleados cuya fecha de contratación sea en el año 1992.

SELECT * FROM Employees
WHERE YEAR(HireDate) = 1992;

-- 5.Mostrar los empleados ordenados de forma ascendende por apellido.

SELECT * FROM Employees
ORDER BY FirstName ASC;

#7.Mostrar los proveedores cuyo dato de contacto tenga un cargo (ContactTitle)relacionado con ventas (Sale)

SELECT * FROM Suppliers
WHERE ContactTitle LIKE '%sale%';

#8.Mostrar proveedores ordenados por codigo postal

SELECT * FROM Suppliers
order by PostalCode;


#9.Mostrar proveedores cuyo pais empiece con la letra U, ordenados de forma ascendente por la columna ID

SELECT * FROM Suppliers
WHERE Country LIKE 'U%'
ORDER BY SupplierID asc;

#10.Mostrar los productos que tengan la palabra ‘Queso’ en su nombre.

SELECT *
FROM Products
WHERE ProductName LIKE '%Queso%';