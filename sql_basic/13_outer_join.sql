-- OUTER JOIN
-- Uniones similares a los de JOIN pero obteniendo no sòlo los registros comununes
-- sino todos los que estèn en la tabla maestra.
SELECT c.nombre, v.producto, SUM(v.cantidad) AS Cantidad
FROM clientes c
LEFT OUTER JOIN ventas v ON c.numero_socio = v.numero_socio
GROUP BY c.nombre, c.apellidos, v.producto;

-- Vamos a obtener la lista de clientes que o bien hayan comprado velas o bien no hayan comprado ningún artículo (como hemos visto en la query anterior, en estos casos tanto el producto como la cantidad es NULL).

SELECT c.nombre, v.producto, SUM(v.cantidad) AS Cantidad
FROM clientes c
LEFT OUTER JOIN ventas v ON c.numero_socio = v.numero_socio
WHERE v.producto IS NULL
OR v.producto = 'Vela'
GROUP BY c.nombre, c.apellidos, v.producto;
