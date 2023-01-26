-- ! ALTER TABLE

-- * REMATE TO
--ALTER nombre_tabla RENAME TO nuevo_nombre
ALTER TABLE cliente RENAME TO clientes;

-- * ADD COLUMN
-- ALTER TABLE nombre_table ADD COLUMN nombre_columna tipo_columna
ALTER TABLE clientes ADD COLUMN numero_telefon INT;

-- * DROP COLUMN
-- ALTER TABLE nombre_tabla DROP COLUMN nombre_columna;
ALTER TABLE clientes DROP COLUMN edad;

-- * RENAME COLUMN
-- ALTER TABLE nombre_tabla RENAME COLUMN nombre_columna TO nuevo_nombre;
ALTER TABLE clientes RENAME COLUMN nomber TO nombre;

-- TODO: Ejercicio
-- Añadir una columna para registrar direciones de email 50 caracteres.
ALTER TABLE clientes ADD COLUMN email VARCHAR(50);

-- Añadir otra para los telefonos fijos
ALTER TABLE clientes ADD COLUMN telefono_fijo INT;

-- Eliminar la columna de puntos dado que ya ha terminado la promoción
ALTER TABLE clientes DROP COLUMN puntos;

-- Cambiar dni por nif permitiendo por lo tanto registrar autonomos como clientes
-- de la tienda
ALTER TABLE clientes REMANE COLUMN dni TO nif;

-- ! DROP TABLE
DROP nombre_tabla;

-- ! Añadir PRIMARY KEY tras crear una tabla
-- ALTER TABLE nombre ADD PRIMARY KEY (columna1, columna2);
ALTER TABLE clientes ADD PRIMARY KEY (dni);
--! Eliminar una llave primaria
--ALTER TABLE nombre_tabla DROP PRIMARY KEY
ALTER TABLE modelo DROP PRIMARY KEY


