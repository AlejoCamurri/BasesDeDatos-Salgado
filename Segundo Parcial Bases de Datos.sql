
--SEGUNDO PARCIAL 

--DNI: 43017105
--Año: 2025
--Nombre y Apellido: Alejo Camurri

--Resuelva las siguientes consultas SQL: 

--1. Mostrar OrderID, CustomerID, y descripción de los productos de la
--Orden 10248.
SELECT 
       O.OrderID,
	   O.CustomerID,
	   P.ProductName AS Descripcion_producto
FROM Orders AS O
INNER JOIN [Order Details] AS OD ON OD.OrderID = O.OrderID
INNER JOIN Products AS P ON P.ProductID = OD.ProductID
WHERE O.OrderID = 10248;

--2. Mostrar los empleados cuya ciudad empieze con letra ‘S’.
--Ordenarlos por Pais de forma descendente.
SELECT * 
FROM Employees
WHERE City LIKE 'S%'
ORDER BY Country DESC;

--3. Mostrar el nombre de los productos que no obtuvieron descuento en
--órdenes.
SELECT P.ProductName AS 'Producto sin descuento'
FROM Products AS P
INNER JOIN [Order Details] AS OD
ON OD.ProductID = P.ProductID
WHERE OD.Discount = 0;

--4. El promedio de gasto de envío de las órdenes.
SELECT AVG(Freight) AS Promedio_gasto_envío
FROM Orders;

--5. Mostrar los datos de la orden con el precio de flete (freight) mas
--barato
SELECT * FROM Orders
WHERE Freight IN(SELECT MIN(Freight) FROM Orders);
                 
--6. Mostrar los 5 productos mas caros.
SELECT TOP 5 * FROM Products
ORDER BY UnitPrice DESC;

--7. Cantidad de empleados norteamericanos (USA)
SELECT COUNT(EmployeeID) AS Empleados_norteamericanos
FROM Employees
WHERE Country = 'USA';

--8. Mostrar los clientes que aun no realizaron alguna compra
SELECT * 
FROM Customers
WHERE CustomerID NOT IN(SELECT CustomerID FROM Orders);

--9. Crear una vista que muestre: ID de producto, descripcion y el pais
--donde se puede comprar
CREATE VIEW Vista_Productos_Pais AS
SELECT 
      P.ProductID,
      P.ProductName AS Descripcion,
      S.Country AS Pais_Proveedor
FROM Products AS P
INNER JOIN Suppliers AS S
ON P.SupplierID = S.SupplierID;

--10. Mostrar la Categoria y cantidad de productos que tienen 30 o mas
--unidades en stock de cada categoria, siempre y cuando haya al
--menos 2
SELECT C.CategoryName AS Categoria,
       COUNT(P.ProductID) AS Productos
FROM Categories AS C
INNER JOIN Products AS P ON C.CategoryID = P.CategoryID
WHERE P.UnitsInStock >= 30
GROUP BY C.CategoryName
HAVING COUNT(P.ProductID) >= 2;






