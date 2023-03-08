USE `northwind`;
SELECT product_id, unit_price
FROM `products`
LIMIT 10;

SELECT product_id, unit_price
FROM `products`
ORDER BY product_id DESC
LIMIT 10;

SELECT DISTINCT *
FROM `order_details`;

SELECT DISTINCT `order_id`, `product_id`, `unit_price`, `quantity`, `discount`
FROM order_details 
LIMIT 2;
-- preguntar a césar sobre ej 3 -- 

SELECT `unit_price`* `quantity` AS `importe_total`
FROM `order_details`;

SELECT `order_id`, (unit_price * quantity) AS `importe_total`
FROM `order_details`
ORDER BY `importe_total` DESC
LIMIT 100 OFFSET 4
;










