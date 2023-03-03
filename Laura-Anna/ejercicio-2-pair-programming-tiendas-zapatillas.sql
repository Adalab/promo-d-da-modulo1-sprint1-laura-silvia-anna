USE `tiendas_zapatillas`;

ALTER TABLE `zapatillas`
ADD COLUMN marca VARCHAR(45) NOT NULL;
    
ALTER TABLE `zapatillas`    
ADD COLUMN talla INT NOT NULL;
    
ALTER TABLE `empleados`  
ADD salario INT NOT NULL; 
    
ALTER TABLE `empleados`
MODIFY COLUMN salario FLOAT;

ALTER TABLE `clientes`
DROP COLUMN pais;

ALTER TABLE `clientes`
MODIFY COLUMN codigo_postal CHAR(5);

ALTER TABLE `facturas`
ADD COLUMN total FLOAT; 














    
    
    

    
    
    


    
	

