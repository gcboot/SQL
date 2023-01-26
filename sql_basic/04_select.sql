-- ? SELECT BASICO

-- SELECT columna1, columna_n FROM nombre_tabla;

SELECT * FROM clientes;
SELECT nombre,apellidos, dni FROM clientes;

-- ! SELECT DISTINCT le indicamos a la base de datos que queremos buscar valores únicos.
SELECT DISTINCT nombre FROM clientes;
SELECT DISTINCT numero_telefono, direccion FROM CLIENTES

-- ! ORDER BY
SELECT nombre, apellido FROM clientes ORDER BY nombre;

-- ! DESC (descendente) o ASC(ascendente)
SELECT nombre, apellido FROM clientes ORDER BY nombre DESC;
SELECT nombre, apellido FROM clientes ORDER BY nombre ASC;

-- ! LIMIT
-- SELECT [...] LIMIT numero_registros
SELECT * FROM clientes ORDER BY edad DESC LIMIT 3;

-- ! COUNT
-- SELECT COUNT (* / columna / DISTINCT columna)   FROM nombre_tabla
SELECT COUNT(*) FROM clientes; -- Resultado 6 Registros
SELECT COUNT(dni) FROM clientes; -- dni validos 2
SELECT COUNT(DISTINCT nombre) FROM clientes; -- 5 nombres distintos

-- TODO: Escribe consultas que respondan a las siguientes preguntas:
-- ? 1. ​¿Cuántos clientes nos han dado su teléfono móvil? 
SELECT COUNT(numero_telefono) FROM clientes; -- R// 1

-- ? 2. ¿Cuáles son las edades de los clientes?
SELECT DISTINCT edad FROM clientes; -- edades 32 - NULL - 45 

-- ? ​3. ​¿Cómo se llaman (nombre y apellidos) todos nuestros clientes? 
SELECT nombre, apellidos FROM clientes;

-- ? 4. ​Supón que queremos enviarles una felicitación el día de su cumpleaños: ¿cuántas tarjetas tenemos que comprar? 
SELECT COUNT(fecha_nacimiento) FROM clientes; -- 3 Tarjetas de cumpleaños

-- ? 5. ¿En qué fechas nacieron?
SELECT DISTINCT fecha_nacimiento FROM clientes;



