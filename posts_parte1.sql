-- Crear Base de datos posts
CREATE DATABASE posts

-- Conectar Base de Datos posts
\c posts

--  Crear tabla post, con los atributos id, nombre de usuario, fecha de creación, contenido, descripción
CREATE TABLE posts(
    id SERIAL UNIQUE NOT NULL PRIMARY KEY,
    nombre VARCHAR(30) NOT NULL,
    fecha TIMESTAMP NOT NULL,
    contenido VARCHAR(300) NOT NULL,
    descripción VARCHAR(100) NOT NULL
);

-- Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos"
INSERT INTO posts(nombre,fecha,contenido,descripción) VALUES (
    'Pamela','2020-05-20 18:34:30','Las ideas se encienden unas con otras como las chispas eléctricas.','Primera Frase Célebre'
);

INSERT INTO posts(nombre,fecha,contenido,descripción) VALUES (
    'Pamela','2020-06-22 20:10:05','Los animales son de Dios. La bestialidad es humana','Segunda Frase Célebre'
);

INSERT INTO posts(nombre,fecha,contenido,descripción) VALUES (
    'Pamela','2020-07-02 05:22:10','La naturaleza benigna provee de manera que en cualquier parte halles algo que aprender.','Tercera Frase Célebre'
);

INSERT INTO posts(nombre,fecha,contenido,descripción) VALUES (
    'Carlos','2020-08-25 11:12:13','El hombre se distingue de todas las demás criaturas por la facultad de reír.','Cuarta Frase Célebre'
);

-- Modificar la tabla post, agregando la columna título
ALTER TABLE posts ADD COLUMN titulo VARCHAR(50);

-- Agregar título a las publicaciones ya ingresada
UPDATE posts SET titulo = 'Frase de Johann J. Engel' WHERE id = 1;
UPDATE posts SET titulo = 'Frase de Victor Hugo ' WHERE id = 2;
UPDATE posts SET titulo = 'Frase de Leonardo Da Vinci' WHERE id = 3;
UPDATE posts SET titulo = 'Frase de Joseph Addison' WHERE id = 4;

-- Insertar 2 post para el usuario "Pedro" 
INSERT INTO posts(nombre,fecha,contenido,descripción,titulo) VALUES (
    'Pedro','2020-07-01 11:12:13','Para las personas creyentes, Dios esta al principio. Para los científicos está el final de todas sus reflexiones.','Quinta Frase Célebre','Frase de Max Planck'
);

INSERT INTO posts(nombre,fecha,contenido,descripción,titulo) VALUES (
    'Pedro','2020-08-30 22:10:13','El ignorante afirma, el sabio duda y reflexiona.','Sexta Frase Célebre','Frase de Aristóteles'
);

-- Eliminar el post de Carlos
DELETE FROM posts WHERE nombre = 'Carlos';

-- Ingresar un nuevo post para el usuario "Carlos"
INSERT INTO posts(nombre,fecha,contenido,descripción,titulo) VALUES (
    'Carlos','2020-10-22 17:56:13','No basta saber, se debe también aplicar. No es suficiente querer, se debe también hacer.','Séptima Frase Célebre','Frase de Goethe'
);

