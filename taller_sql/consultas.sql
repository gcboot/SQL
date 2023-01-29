-- Ejercicios
-- * Obtener todos los usuarios con por lo menos una tarea INNER JOIN o NESTED QUERY
SELECT DISTINCT users.* FROM users INNER JOIN tasks ON users.id = tasks.user_id;
SELECT users.* FROM users WHERE users.id NOT IN(SELECT user_id FROM tasks);

-- * Obtener todos los usuarios de tipo Admin con por lo menos una tarea.
SELECT DISTINCT users.* FROM users INNER JOIN tasks ON users.id = tasks.user_id WHERE users.user_type_id = 1;

-- ! No es optima
SELECT DISTINCT users.* FROM users INNER JOIN tasks ON users.id = tasks.user_id
INNER JOIN user_types ON user_types.id = users.user_type_id
WHERE user_type_id = 1;

-- * Obtener todos los usuarios sin tareas asignadas
SELECT users.* FROM users WHERE users.id NOT IN(SELECT user_id FROM tasks);
SELECT users.* FROM users LEFT JOIN tasks ON users.id = tasks.user_id WHERE tasks.id IS NULL;

-- * Obtener el usuario con mayor cantidad de tareas.
SELECT users.*, COUNT(*) AS total_tasks FROM users INNER JOIN tasks ON users.id = tasks.user_id GROUP BY users.id ORDER BY 
total_tasks DESC LIMIT 1;
SELECT users.*, SUM(IF (tasks.id IS NULL, 0, 1)) AS total
FROM users LEFT JOIN tasks ON users.id = tasks.user_id
GROUP BY users.id
ORDER BY total DESC LIMIT 1;

-- Obtener el usuario con mayor cantidad de tareas en proceso.
SELECT users.*, SUM(IF (tasks.id IS NULL, 0, 1)) AS total
FROM users LEFT JOIN tasks ON users.id = tasks.user_id AND status = 'Proceso'
GROUP BY users.id
ORDER BY total DESC LIMIT 1;

-- Listar Todos los usuarios con 2 o más tareas
SELECT users.*, SUM(IF (tasks.id IS NULL, 0, 1)) AS total
FROM users LEFT JOIN tasks ON users.id = tasks.user_id
GROUP BY users.id
HAVING total >= 2
ORDER BY total DESC;

-- Mostrar en pantalla todas las tareas pasadas
-- Mostrar en pantalla todas las tareas pasadas con categoria desarrollo
-- Mostar el usuario admin con mas tareas incompletas de tipo de contenido.
