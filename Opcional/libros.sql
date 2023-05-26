-- Crea 5 usuarios diferentes
INSERT INTO usuarios (nombre, last_name)
VALUES ('Jane', 'Austen'), ('Emily', 'Dickinson'), ('Fyodor', 'Dostoevsky'), ('William', 'Shakespeare'), ('Lau', 'Tzu');
SELECT * FROM usuarios;

-- Crea 5 libros
INSERT INTO libros (titulo, num_paginas)
VALUES ('C Sharp', 200), ('Java', 190), ('Python', 180), ('PHP', 170), ('Ruby', 150);
SELECT * FROM libros;

-- Cambia el nombre del libro 'C Sharp' a 'C#'
UPDATE libros SET titulo = 'C#'
WHERE id = 6;

-- Cambia el nombre del cuarto usuario a 'Bill'
UPDATE usuarios SET nombre = 'Bill'
WHERE id = 4;

-- Haz que el primer usuario marque como favorito los 2 primeros libros
INSERT INTO favoritos (usuario_id, libro_id)
VALUES (1,6), (1,7);

-- Haz que el segundo usuario marque como favorito los primeros 3 libros
INSERT INTO favoritos (usuario_id, libro_id)
VALUES (2,6), (2,7), (2,8);

-- Haz que el tercer usuario marque como favorito los primeros 4 libros
INSERT INTO favoritos (usuario_id, libro_id)
VALUES (3,6), (3,7), (3,8), (3,9);

-- Haz que el cuarto usuario marque como favorito todos los libros
INSERT INTO favoritos (usuario_id, libro_id)
VALUES (4,6), (4,7), (4,8), (4,9), (4,10);

-- Recupera todos los usuarios que marcaron como favorito el tercer libro
SELECT * FROM libros
JOIN favoritos ON libros.id = favoritos.libro_id
JOIN usuarios ON usuarios.id = favoritos.usuario_id
WHERE libros.id = 8;

-- Elimina el primer usuario de los favoritos del tercer libro
DELETE FROM favoritos
WHERE libro_id = 8
AND usuario_id = 2;

-- Haz que el quinto usuario marque como favorito el segundo libro
INSERT INTO favoritos (usuario_id, libro_id)
VALUES (5,7);

-- Encuentra todos los libros que el tercer usuario marco como favoritos
SELECT * FROM usuarios
JOIN favoritos ON usuarios.id = favoritos.usuario_id
JOIN libros ON libros.id = favoritos.libro_id
WHERE libro_id = 3;

-- Encuentra todos los usuarios que marcaron como favorito el quinto libro
