-- creación de la BBDD
DROP DATABASE plantillas;
CREATE DATABASE IF NOT EXISTS plantillas;
USE plantillas;

-- creación de tablas
CREATE TABLE usuarios(
idusuario INT(200) NOT NULL AUTO_INCREMENT,
nombre  INT(200) NOT NULL,
correo VARCHAR (100) NOT NULL,
telefono VARCHAR (100) NOT NULL,
PRIMARY KEY(idusuario, nombre, correo, telefono)
);


CREATE TABLE usuario_modelo(
idum INT(200) PRIMARY KEY NOT NULL AUTO_INCREMENT,
dia DATE,
nota VARCHAR(10),
idusuario INT(200),
FOREIGN KEY (idusuario) REFERENCES usuarios(idusuario)

);
CREATE TABLE modelo(
idmodelo INT(200) PRIMARY KEY NOT NULL AUTO_INCREMENT,
descripcionmodelo VARCHAR(400),
fecha DATE,
idum INT(200),
FOREIGN KEY (idum) REFERENCES  usuario_modelo(idum)

);

CREATE TABLE tipo_modelo(
idtipomodelo INT(200) PRIMARY KEY NOT NULL AUTO_INCREMENT,
idmodelo INT(200),
modelo VARCHAR(50),
FOREIGN KEY (idmodelo) REFERENCES modelo(idmodelo)
);

CREATE TABLE examen(
idexamen INT(200) PRIMARY KEY NOT NULL AUTO_INCREMENT,
descripcionexamen VARCHAR(500),
cantidadpreguntas INT(100),
puntmin INT(200),
idmodelo INT(200),
FOREIGN KEY (idmodelo) REFERENCES modelo(idmodelo)
);

CREATE TABLE preguntas(
idpreguntas INT(200) PRIMARY KEY NOT NULL AUTO_INCREMENT,
idexamen INT(200),
pregunta VARCHAR (500),
cantidadrespuestas INT(200),
FOREIGN KEY (idexamen) REFERENCES examen(idexamen)
);

CREATE TABLE respuestas(
idrespuestas INT(200) PRIMARY KEY NOT NULL AUTO_INCREMENT,
idpreguntas INT(200),
correcta BOOLEAN,
FOREIGN KEY (idpreguntas) REFERENCES  preguntas(idpreguntas)
);


CREATE TABLE usuario_respuesta(
idur INT(200) PRIMARY KEY NOT NULL AUTO_INCREMENT,
respuesta VARCHAR(4),
idusuario INT(200),
idrespuestas INT(200),
FOREIGN KEY (idusuario) REFERENCES usuarios(idusuario),
FOREIGN KEY (idrespuestas) REFERENCES respuestas(idrespuestas)
);

-- inserción de datos por tabla
INSERT INTO usuarios (correo, telefono) VALUES ('', '');
INSERT INTO modelo(descripcionmodelo, fecha) VALUES ('','');
INSERT INTO tipo_modelo (idmodelo, modelo) VALUES (,'');
INSERT INTO examen (idmodelo, descripcionexamen, cantidadpreguntas, puntmin) VALUES (,'',,);
INSERT INTO preguntas(idexamen, pregunta, cantidadrespuestas)  VALUES(,'',);
INSERT INTO respuestas(idpreguntas, correcta) VALUES(,'');
