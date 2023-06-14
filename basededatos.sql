CREATE DATABASE primer_db; /* crea la base de datos */

SHOW DATABASES; /* ves las base de datos creadas */

USE primer_db /* utiliza la base de datos que le pidamos */

/* crea la  tabla, INT = numero entero, NOT NULL = no puede estar vacio, AUTO_INCREMENT = aumenta 1 en 1 cada vez se crea uno nuevo valor,
VARCHAR(30) = que tiene ser un string y un maximo de caracteres que se ponen entre parentesis 
FLOAT = numeros con decimales */
CREATE TABLE primer_tabla(
    id_registro INT NOT NULL AUTO_INCREMENT,
    campo_1 VARCHAR(30) NOT NULL,
    campo_2 FLOAT,
    PRIMARY KEY (id_registro)
);

DESCRIBE primer_tabla;  /* muestra la tabla que creamos con cada uno de sus campos*/


SELECT * FROM primer_tabla; /* muestra toda la tabla, * = nos indica todo */


/* INSERT INTO = insertar contenido a la tabla, se indica el nombre de la tabla, entre parentesis los campos a agregar
 VALUES = valores a agregar en cada campo separado por , */
INSERT INTO primer_tabla (campo_1, campo_2) VALUES ("Eduardo Magariños", 5547.236); 

INSERT INTO primer_tabla (campo_1, campo_2) VALUES ("Soy otro usuario nuevo", 0.05);

INSERT INTO primer_tabla (campo_1, campo_2) VALUES ("ahora sumo otro usuario", 1.06);

INSERT INTO primer_tabla (campo_1, campo_2) VALUES ("y te sumo otro usuario null", null );

/* Muestra toda la tabla con los valores que agregamos*/
SELECT * FROM primer_tabla;


/* solamente muestra el campo 1 de nuestra tabla*/
SELECT campo_1 FROM primer_tabla;


/* Muestra solamenter el registro 2 de nuestra base de datos*/
SELECT * FROM primer_tabla WHERE id_registro = 2;


/* con el limit ponemos hasta que campo nos muestre*/
SELECT * FROM primer_tabla LIMIT 3;


/* subir en la tabla, en el campo 1  y campo 2, donde en el registro 1, es para realizar cambios en nuestra base */
UPDATE primer_tabla SET campo_1 = “ves, soy alguien nuevo”, campo_2 = 0.0 WHERE id_registro =  1;

/* aca le decimos que borre en nuestra tabla, solamente el registro dos*/
DELETE FROM primer_tabla WHERE id_registro = 2;


/* aca es para agregar cosas nuevas en nuestra tabla*/
INSERT INTO primer_tabla (campo_1, campo_2) VALUES ("Hola, recien llegue", 123.4);