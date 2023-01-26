-- ! Insertar registros en la tabla clientes

INSERT INTO clientes(nombre, apellidos, dni, direccion, numero_socio, 
                    fecha_nacimiento, numero_telefono, edad, email, telefono_fijo) VALUES
                    ('Roberto', 'Suarez Gil', '789768D', 'Calle Mayor', 1, '1978-08-21',679867457,32, NULL,913479567);

INSERT INTO clientes(nombre, apellidos) VALUES ('Antonio', 'Sanchez Caballero');

-- TODO: Crear las siguientes INSERT INTO de los siguientes clientes:
-- 1. ​HÉCTOR GARCÍA PASCUAL, con número de socio 123, nacido el 3 de Mayo del 79, y teléfono fijo 916897654.
INSERT INTO clientes (nombre, apellidos, numero_socio, fecha_nacimiento, telefono_fijo) VALUES
                     ('Hector', 'Garia Pascual', 123, '1979-05-03',916897654);
                
-- 2. ​SILVIA ROMERO FERNÁNDEZ, con DNI 78665432Q que vive en la Calle Manuela Malasaña 23 de Madrid.
INSERT INTO clientes (nombre, apellidos, dni, direccion) VALUES
                     ('Silvia', 'Romero Fernandez', '78665432Q', 'Calle Manuela Malasaña 23 de Madrid');

-- LAURA MARÍN SÁNCHEZ, de 45 años de edad, 345.67 puntos y dirección lmarsanchez@tucorreo.es.
INSERT INTO clientes(nombre, apellidos, edad, email) VALUES ('Laura', 'Marin Sanchez', 45, 'lmarsanchez@tucorreo.es');

-- 4. ​ANTONIO SÁNCHEZ CABALLERO, nacido el 5 de Junio del 68.
INSERT INTO clientes (nombre, apellidos, fecha_nacimiento) VALUES ('Antonio', 'Sanchez Caballero', '1968-06-05');

--! INSERTAR EN LA TABLA modelos -- PRIMARY KEY
INSERT INTO modelos (modelo, marca,cilindrada,consumo) VALUES (123, 'IBIZA SEAT',);

INSERT INTO clientes (numero_socio, nombre, dni, edad) VALUES (100,'Juan','034987345',25);
INSERT INTO clientes(numero_socio, nombre, dni, edad) VALUES (1001, 'Maria', '40118730J', 55);
INSERT INTO clientes(numero_socio, nombre, dni, edad) VALUES (1002, 'Roberto', '345173900', 27);

-- ! Insertar registros en la tabla Ventas

INSERT INTO ventas(numero_socio, fecha, producto, cantidad) VALUES (100, '2015-01-12', 'Vela', 5);
INSERT INTO ventas(numero_socio, fecha, producto, cantidad) VALUES (100, '2015-02-14', 'Vela', 5);
INSERT INTO ventas(numero_socio, fecha, producto, cantidad) VALUES (100, '2015-06-18', 'Marco de Fotos', 2);
INSERT INTO ventas(numero_socio, fecha, producto, cantidad) VALUES (1001, '2015-02-18', 'Marco de Fotos', 1);
INSERT INTO ventas(numero_socio, fecha, producto, cantidad) VALUES (1001, '2015-12-10', 'Taza', 1);
INSERT INTO ventas(numero_socio, fecha, producto, cantidad) VALUES(1002, '2015-10-09', 'Reloj de Pared', 1);

-- ! Insertar registros en la tabla clientes Web
INSERT INTO clientes_web (numero_socio, nombre, dni) VALUES (100, 'Juan', '03498734R');

INSERT INTO clientes_web (numero_socio, nombre, dni) VALUES (1006, 'Ainhoa', '29401459I');

INSERT INTO clientes_web (numero_socio, nombre, dni) VALUES (1001, 'Maria', '4011873O');