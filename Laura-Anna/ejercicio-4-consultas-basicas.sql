/* Consultas básicas 1

--  Obtener una lista con los datos de las empleadas y empleados de la empresa Northwind. 
-- Dicha consulta tiene que tener los campos employee_id, last_name y first_name.

SELECT employee_id, last_name, first_name
FROM employees;

-- Nuestro primer encargo es ver aquellos productos (tabla products) cuyos precios por unidad se encuentren entre los 0 y 5 dólares, 
-- es decir, los productos más baratos.

SELECT product_name
FROM products
WHERE unit_price <= 5;

-- Por otra parte, queremos también conocer los datos de los productos que tengan exactamente un precio de 18, 19 o 20 dólares 
-- (unos valores muy concreto de precios del que la empresa quiere maximizar sus ventas en un futuro).

SELECT product_name
FROM products
WHERE unit_price = 18 OR unit_price = 19 OR unit_price = 20;

-- El rango de productos que puede dar más beneficios a la empresa podría ser el de aquellos con un precio mayor o igual a 15 dólares, pero menor o igual que 50 dólares.
-- Selecciona los datos de ese rango de productos.

SELECT product_name
FROM products
WHERE unit_price >= 15 AND unit_price <= 50;

-- El rango de productos que puede dar más beneficios a la empresa podría ser el de aquellos con un precio mayor o igual a 15 dólares, pero menor o igual que 50 dólares. 
-- Selecciona los datos de ese rango de productos.

SELECT product_name
FROM products
WHERE unit_price IS NULL;

-- Ahora obtén los datos de aquellos productos con un precio menor a 15 dólares, pero sólo aquellos que tienen un ID menor que 10 
-- (para tener una muestra significativa pero no tener que ver todos los productos existentes).

SELECT product_name
FROM products
WHERE unit_price < 15 AND product_id < 10;

-- Ahora vamos a hacer la misma consulta que en ejercicio anterior, pero haciendo invirtiendo el uso de los operadores
-- y queremos saber aquellos que tengan un precio superior a 15 dólares y un ID superior a 10..

SELECT product_name
FROM products
WHERE unit_price > 15 AND product_id > 10;

-- A Northwind le interesa conocer los datos de los países que hacen pedidos (orders) para focalizar el negocio en esas regiones
-- y al mismo tiempo crear campañas de marketing para conseguir mejorar en las otras regiones. 
-- Realiza una consulta para obtener ese dato.

SELECT ship_country
FROM orders;

*/
