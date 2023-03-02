 CREATE SCHEMA `tiendas_zapatillas`;
 USE `tiendas_zapatillas`;
 
 CREATE TABLE `Zapatillas`(
 `id_zapatilla` INT NOT NULL AUTO_INCREMENT,
 `modelo` VARCHAR(45) NOT NULL,
 `color` VARCHAR(45) NOT NULL,
 PRIMARY KEY(`id_zapatilla`)
 );
    
CREATE TABLE `Clientes`(
	`id_cliente` INT NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(45) NOT NULL,
    `numero_telefono` INT(9) NOT NULL,
    `email` VARCHAR(45) NOT NULL,
    `direccion` VARCHAR(45) NOT NULL,
    `ciudad` VARCHAR(45) NOT NULL,
    `provincia` VARCHAR(45) NOT NULL,
    `pais` VARCHAR(45) NOT NULL,
    `codigo_postal` VARCHAR(45) NOT NULL,    
    PRIMARY KEY(`id_cliente`)
);
    
CREATE TABLE `Empleados`(
	`id_empleado` INT NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(45) NOT NULL,
    `tienda` VARCHAR(45) NOT NULL,
    `salario` INT,
    `fecha_incorporacion` DATE NOT NULL,
    PRIMARY KEY(`id_empleado`)
);

CREATE TABLE `Facturas`(
	`id_factura` INT NOT NULL AUTO_INCREMENT,
    `numero_factura` VARCHAR(45) NOT NULL,
    `fecha` DATE NOT NULL,
    `id_zapatilla` INT NOT NULL,
    `id_empleado` INT NOT NULL,
    `id_cliente` INT NOT NULL,
    PRIMARY KEY(`id_factura`),
    CONSTRAINT `fk_Facturas_Zapatillas`
		FOREIGN KEY(`id_zapatilla`)
        REFERENCES `Zapatillas` (`id_zapatilla`) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT `fk_Facturas_Empleados`
		FOREIGN KEY(`id_empleado`)
		REFERENCES `Empleados` (`id_empleado`) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT `fk_Facturas_Clientes`
		FOREIGN KEY(`id_cliente`)
        REFERENCES `Clientes` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE
);