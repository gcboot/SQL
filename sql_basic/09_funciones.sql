<<<<<<< HEAD
-- ! Funciones

-- * SUM
-- Realiza las sumas de la columna edad
SELECT SUM(edad) AS edad FROM clientes; 

SELECT SUM(edad) AS edad, COUNT(edad) AS numero_clientes, (SUM(edad)/COUNT(edad)) AS edad_media FROM clientes;

-- * MIN y MAX
-- Nos trae el valor menor y mayor de la edad
SELECT MIN(edad), MAX(edad) FROM clientes;

-- * UPPER Y LOWER
-- UPPER convierte el texto a minúscula
-- LOWER convierte el texto a mayúscula
SELECT LOWER(nombre) AS nombre FROM clientes WHERE direccion IS NOT NULL;
SELECT LOWER(nombre) AS nombre, UPPER(direccion) AS direccion FROM clientes WHERE direccion IS NOT NULL;

-- * SUBSTR
-- Permite traer una porción de una cadena de texto
SELECT dni, SUBSTR(dni,3,1) AS numero FROM clientes WHERE numero_socio = 1;
SELECT dni, SUBSTR(dni,3,0) AS numero FROM clientes WHERE numero_socio = 1;
SELECT dni, SUBSTR(DNI,3,-2) AS numero  FROM clientes WHERE numero_socio = 1;
SELECT dni, SUBSTR(DNI,3) AS numero  FROM clientes WHERE numero_socio = 1;

--* CONCAT
SELECT CONCAT(nombre,' ',apellidos) AS nombre_completo FROM clientes WHERE numero_socio = 1;
SELECT CONCAT(nombre,',',apellidos) AS nombre_completo FROM clientes WHERE numero_socio = 1;



