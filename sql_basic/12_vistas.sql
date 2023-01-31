-- Vistas

CREATE VIEW clientes_no_web AS
SELECT numero_socio, dni, nombre, apellidos
FROM clientes
WHERE numero_socio NOT IN
(SELECT numero_socio FROM clientes_web);

-- ! Visualiazamos la vista
SELECT * FROM clientes_no_web;

-- Eliminar Vistas
DROP VIEW clientes_no_web;

