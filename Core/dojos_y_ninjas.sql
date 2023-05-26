-- Crea 3 dojos nuevos
INSERT INTO dojos (nombre)
VALUES ('Chicago'), ('Seatle'), ('Online');

-- Elimina los 3 dojos que acabas de crear
-- DELETE  FROM dojos;
SELECT * FROM dojos;
SELECT * FROM ninjas; 

-- Crea 3 dojos nuevos
INSERT INTO dojos (nombre)
VALUES ('Chicago'), ('Seatle'), ('Online');

-- Crea 3 ninjas que pertenezcan al primer dojo
INSERT INTO ninjas (first_name, last_name, age, dojo_id)
VALUES ('Adrien', 'Dion', 39, 7), ('Anne', 'Jurack', 34, 7), ('Ryan', 'Magley', 30, 7);

-- Crea 3 ninjas que pertenezcan al segundo dojo
INSERT INTO ninjas (first_name, last_name, age, dojo_id)
VALUES ('Michael', 'Dion', 38, 8), ('Jenny', 'Jurack', 33, 8), ('Ron', 'Magley', 29, 8);

-- Crea 3 ninjas que pertenezcan al tercer dojo
INSERT INTO ninjas (first_name, last_name, age, dojo_id)
VALUES ('Juan', 'Dion', 37, 9), ('Maria', 'Jurack', 32, 9), ('Rony', 'Magley', 28, 9);

-- Recupera todos los ninjas del primer dojo
SELECT * FROM dojos
JOIN ninjas ON dojos.id = ninjas.dojo_id
WHERE dojos.id = 7;

-- Recupera todos los ninjas del ultimo dojo
SELECT * FROM dojos
JOIN ninjas ON dojos.id = ninjas.dojo_id
WHERE dojos.id = (SELECT dojo_id FROM ninjas ORDER BY dojo_id DESC LIMIT 1);

-- Recupera el dojo del ultimo ninja
SELECT * FROM dojos
WHERE dojos.id = (SELECT dojo_id FROM ninjas ORDER BY dojo_id DESC LIMIT 1);
