-- * JOIN
/*
 ?La sentencia JOIN de SQL permite combinar registros de una o más tablas en una base de datos. En el Lenguaje de Consultas Estructurado hay tres tipos de JOIN: interno, externo y cruzado. El estándar ANSI del SQL especifica cinco tipos de JOIN: INNER, LEFT OUTER, RIGHT OUTER, FULL OUTER y CROSS.
*/

-- ! Estructura
-- tabla_1 JOIN tabla_2 ON condicion

SELECT ventas.numero_socio, ventas.fecha, ventas.producto, ventas.cantidad,
       clientes.dni FROM ventas JOIN clientes JOIN clientes ON ventas.numero_socio = cliente.numero_socio;

-- Alias
SELECT c.nombre, c.apellidos FROM clientes c;

-- Utilizando AS
SELECT c.nombre, c.apellidos AS nombre_completo FROM clientes c;
-- * Ejemplo:
-- Todas las ventas junto con el DNI del comprador.
SELECT v.*, c.dni FROM ventas v JOIN clientes c ON v.numero_socio = c.numero_socio;

SELECT v.numero_socio, c.dni FROM ventas v JOIN clientes c ON v.numero_socio = c.numero_socio;

-- Nombre de los clientes que han comprado tazas.
SELECT c.nombre, FROM ventas v JOIN clientes c ON v.numero_socio = c.numero_socio WHERE v.producto = 'Taza';

-- -todos los datos de los socios que hayan comprado alguna vez.
SELECT c.* FROM ventas v JOIN clientes c ON v.numero_socio = c.numero_socio;

-- Necesitamos saber cuántos clientes mayores de 20 años han comprado marcos de fotos.
SELECT COUNT(DISTINCT c.numero_socio) AS numero_clientes FROM ventas v JOIN clientes c
       ON v.numero_socio = c.numero_socio WHERE v.producto = 'Marco de Fotos' AND c.edad > 20;

-- TODO: Ejercicio:

-- 1. DNI de los clientes que hayan comprado velas.
SELECT DISTINCT(c.dni) FROM ventas v JOIN clientes c ON v.numero_socio = c.numero_socio WHERE v.producto = 'Vela';

-- 2. Número de clientes menores de 50 años que hayan comprado relojes de pared.
SELECT COUNT(DISTINCT c.numero_socio) AS numero_clientes FROM ventas v JOIN clientes c ON v.numero_socio = c.numero_socio
       WHERE v.producto = 'Reloj de Pared' AND c.edad < 50;

-- 3. Número de compras hechas por clientes mayores de 25 años.
SELECT COUNT(*) AS numero_ventas FROM ventas v JOIN clientes c ON v.numero_socio = c.numero_socio
       WHERE c.edad > 25;

