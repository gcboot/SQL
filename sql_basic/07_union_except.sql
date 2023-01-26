-- ! Union y Except

SELECT numero_socio, dni, nombre FROM clientes UNION ALL SELECT numero_socio, dni, nombre FROM clientes_web;
-- Aparecen todos los registros sin importar si estan duplicados -- suma los resultados.
SELECT numero_socio, dni, nombre FROM clientes UNION SELECT numero_socio, dni, nombre FROM clientes_web;
-- Trae todos los registros pero aplica un DISTINCT.
SELECT numero_socio, dni, nombre FROM clientes EXCEPT SELECT numero_socio, dni, nombre FROM clientes_web;
-- ? Actualmente no esta disponoble en MySQL -- Investigar un equivalente
