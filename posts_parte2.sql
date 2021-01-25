-- Crear una nueva tabla, llamada comentarios, con los atributos id, fecha y hora de creación, contenido, que se relacione con la tabla posts.
CREATE TABLE comentarios(
    id SERIAL UNIQUE NOT NULL PRIMARY KEY,
    fecha TIMESTAMP NOT NULL,
    contenido VARCHAR(300) NOT NULL,
    id_post INT NOT NULL REFERENCES posts(id)
);

-- Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos" 
INSERT INTO comentarios(fecha,contenido,id_post) VALUES('2020-06-22 21:18:05','Muy linda frase',2);
INSERT INTO comentarios(fecha,contenido,id_post) VALUES('2020-06-22 22:10:05','Amiga llámame',2);
INSERT INTO comentarios(fecha,contenido,id_post) VALUES('2020-10-22 18:10:55','Que verdad más grande!!',7);
INSERT INTO comentarios(fecha,contenido,id_post) VALUES('2020-10-22 19:12:45','Muy cierto',7);
INSERT INTO comentarios(fecha,contenido,id_post) VALUES('2020-10-22 20:14:35','Hay mejores frases',7);
INSERT INTO comentarios(fecha,contenido,id_post) VALUES('2020-10-22 21:16:25','Otro más...',7);

-- Crear un nuevo post para "Margarita"
INSERT INTO posts(nombre,fecha,contenido,descripción,titulo) VALUES (
    'Margarita','2020-12-30 13:43:13','No hay que confundir nunca el conocimiento con la sabiduría. El primero nos sirve para ganarnos la vida, la sabiduría nos ayuda a vivir.','Octava Frase Célebre','Frase de Sorcha Carey'
);

-- Ingresar 5 comentarios para el post de Margarita
INSERT INTO comentarios(fecha,contenido,id_post) VALUES('2020-12-30 21:18:05','Muy linda frase',8);
INSERT INTO comentarios(fecha,contenido,id_post) VALUES('2020-12-30 18:10:55','Deo pa arriba!!',8);
INSERT INTO comentarios(fecha,contenido,id_post) VALUES('2020-12-30 19:12:45','Muy cierto',8);
INSERT INTO comentarios(fecha,contenido,id_post) VALUES('2020-12-30 20:14:35','Que sabia frase',8);
INSERT INTO comentarios(fecha,contenido,id_post) VALUES('2020-12-30 22:10:05','Amiga contesta el telefóno!!!',8);
