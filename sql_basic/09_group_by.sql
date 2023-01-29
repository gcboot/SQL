-- GROUP BY

-- Cuántas compras ha realizado cada socio
SELECT numero_socio, COUNT(*) AS numero FROM ventas GROUP BY numero_socio;

-- Calcular cuántas veces a adquirido cada producto y en que cantidad total.
SELECT numero_socio,
       producto,
       COUNT(*) AS numero_veces,
       SUM(cantidad) AS numero_unidades
FROM ventas
GROUP BY numero_socio, producto;

-- Seleccionar Grupos
-- ? HAVING selecciona los subtotales a mostrar, Siempre se coloca después de GROUP BY.
-- Mostar socios que hecho dos o más compras.
SELECT numero_socio,
       COUNT(*) AS numero_compras
FROM ventas
GROUP BY numero_socio
HAVING COUNT(*) >=2;

-- Buscar productos que se hayan comprado más de una vez y que su venta mínima sea igual o mayor a tres unidades:
SELECT producto FROM ventas GROUP BY producto HAVING COUNT(*) > 1 AND MIN(cantidad) >=3;
