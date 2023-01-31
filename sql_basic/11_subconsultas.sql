-- SubConsultas

--Buscar todos los clientes que han hecho más compras que el numero_socio = 1001?
SELECT numero_socio, COUNT(*) AS numero_compras
FROM ventas
GROUP BY numero_socio
HAVING COUNT(*) > (SELECT COUNT(*) FROM ventas WHERE numero_socio=1001);

-- Anidación de consultas SQL

¿Cómo obtendríamos las compras de todos aquellos clientes que hayan hecho más que el NUM_SOCIO = 1001?


--Obtener el número de compras del socio 1001:


SELECT COUNT(*) 
FROM ventas
WHERE numero_socio = 1001;

SELECT numero_socio
FROM ventas
GROUP BY numero_socio
HAVING COUNT(*) > (SELECT COUNT(*) FROM ventas WHERE numero_socio = 1001);

SELECT * FROM ventas WHERE numero_socio
IN
  (SELECT numero_socio FROM ventas GROUP BY numero_socio HAVING COUNT(*) >
  (SELECT COUNT(*) FROM ventas WHERE numero_socio = 1001));

-- ? Inserción masiva de registros
-- Aparte de para realizar búsquedas complejas, podemos utilizar subquerys para insertar varios registros
-- a la vez en una tabla de la base de datos.

-- CLIENTES_WEB todos los de la tabla CLIENTES que no estén ya habilitados para el comercio on-line:

SELECT COUNT(*) FROM clientes_web;

INSERT INTO clientes_web(numero_socio, nombre, dni)
SELECT numero_socio, nombre, dni
FROM clientes
WHERE numero_socio NOT IN 
(SELECT numero_socio FROM clientes_web);

