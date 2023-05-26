-- Crea 3 usuarios nuevos
INSERT INTO users (first_name, last_name, email)
VALUES ('Adrien', 'Dion', 'adrien@gmail.com'), ('Toby', 'Dion', 'toby@gmail.com'), ('Marcia', 'Dion', 'marcia@gmail.com');

-- Recupera todos los usuarios
SELECT * FROM users;

-- Recupera el primer usuario que usa su email
SELECT * FROM users
WHERE email = 'adrien@gmail.com';

-- Recupera el ultimo usuario que usa su id
SELECT * FROM users
WHERE id = 3;

-- Cambia el usuario con id=3 para que su apellido sea Panqueques
UPDATE users SET last_name = 'Panqueques'
WHERE users.id = 3;

-- Elimina el usuario con id=2 de la base de datos
DELETE FROM users
WHERE users.id = 2;

-- Obten todos los usuarios ordenados por su nombre
SELECT * FROM users
ORDER BY first_name;

-- Bonus obten todos los usuarios, ordenados por su nombre en descendente
SELECT * FROM users
ORDER BY first_name DESC;