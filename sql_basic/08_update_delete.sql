-- ! UPDATE Y DELETE

-- TODO: RECOMENDACIONES
-- Antes de hacer la manipulación de los datos de la tabla
-- es recomendable usar ROLLBACK para descartar los cambios
-- Si queremos confirmar los cambios utilizamos COMMIT

-- ! Ejemplo: -- No confirmar los cambios
-- Comenzamos con BEGIN, BEGIN WORK o START TRANSACTION

BEGIN;

-- * DELETE eliminamos todos los null
DELETE FROM clientes WHERE dni IS NULL;
DELETE FROM clientes WHERE id = 1;

-- * UPDATE actualizamos todos los numeros de socio de NULL a 0
UPDATE clientes SET numero_socio = 0 WHERE numero_socio IS NULL;
UPDATE clientes SET apellidos = 'Lopez' WHERE id = 1;

-- ? Descartamos los cambios
ROLLBACK;
-- Al final de todo estas sentencias la tabla sigue intacta, no se realizo ningun cambio

-- ! Ejemplo: -- Confirmamos los cambios:
START TRANSACTION;
INSERT INTO clientes(nombre, apellidos, dni, direccion, numero_socio) VALUES ('Wilson', 'Garcia', '334444ff', 'Guatemala', 102);
COMMIT;
-- Cuando confirmamos los cambios ya no podemos regresar atras.

