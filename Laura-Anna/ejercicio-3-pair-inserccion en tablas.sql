USE `tiendas_zapatillas`;

ALTER TABLE `zapatillas`
ADD COLUMN marca VARCHAR(45);

ALTER TABLE `zapatillas`
ADD COLUMN talla INT;

INSERT INTO `zapatillas` (id_zapatilla, modelo, color, marca, talla)  
VALUES (1, 'XQYUN', 'Negro', 'Nike', 42); 

INSERT INTO `zapatillas` (id_zapatilla, modelo, color, marca, talla)  
VALUES 		(2, 'UOPMN', 'Rosas', 'Nike', 39 );
        
INSERT INTO `zapatillas` (id_zapatilla, modelo, color, marca, talla)  
VALUES       (3, 'OPNYT', 'Verdes', 'Adidas', 35);
         

INSERT INTO `empleados` (nombre, tienda, salario, fecha_incorporacion)  
VALUES       ('Laura', 'Alcobendas', 25987, '2010-09-03');
              
INSERT INTO `empleados` (nombre, tienda, salario, fecha_incorporacion)  
VALUES      ('Maria', 'Sevilla', NULL, '2001-04-11');

INSERT INTO `empleados` (nombre, tienda, salario, fecha_incorporacion)
VALUES ('Ester', 'Oviedo', 30165.98, '2000-11-29');


ALTER TABLE `empleados`
MODIFY COLUMN salario FLOAT;

ALTER TABLE `clientes`
ADD COLUMN direccion VARCHAR(45);

INSERT INTO `clientes` (nombre, numero_telefono, email, direccion, ciudad, provincia, pais, codigo_postal)  
VALUES       ('Monica', 1234567289, 'monica@email.com', 'Calle Felicidad','Mostoles', 'Madrid', 'España', 28176);
              
INSERT INTO `clientes` (nombre, numero_telefono, email, direccion, ciudad, provincia, pais, codigo_postal)  
VALUES      ('Lorena', 289345678,'lorena@email.com', 'Calle Alegria','Barcelona', 'Barcelona', 'España', 12346);

INSERT INTO `clientes` (nombre, numero_telefono, email, direccion, ciudad, provincia, pais, codigo_postal)  
VALUES      ('Carmen', 298463759,'carmen@email.com', 'Calle del Color','Vigo', 'Pontevedra', 'España', 23456);


ALTER TABLE `facturas`
ADD COLUMN total INT;


INSERT INTO `facturas` (numero_de_factura, fecha, id_zapatilla, id_empleado, id_cliente, total)  
VALUES      (123, '2001-12-11', 1, 2, 1, 5498);
			

INSERT INTO `facturas` (numero_de_factura, fecha, id_zapatilla, id_empleado, id_cliente, total)  
VALUES                  (12345, '2015-09-18', 2, 3, 3, 7623);
		

UPDATE `zapatillas`
SET color = 'amarillas'
WHERE color = "Rosas"; 

UPDATE `empleados`
SET tienda = 'A Coruna'
WHERE tienda = 'Alcobendas'; 


UPDATE `clientes`
SET numero_telefono = 123456728
WHERE numero_telefono = 1234567289; 

UPDATE `facturas`
SET numero_telefono = 123456728
WHERE numero_telefono = 1234567289; 

