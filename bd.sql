CREATE DATABASE bibliotecaCampus;

CREATE TABLE IF NOT EXISTS autores(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    fechaNacimiento DATE
);

CREATE TABLE IF NOT EXISTS libroAutor(
    id INT PRIMARY KEY AUTO_INCREMENT,
    idAutores INT ,
    CONSTRAINT id_autores_FK FOREIGN KEY (idAutores) REFERENCES autores(id)
);

CREATE TABLE IF NOT EXISTS miembro(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    cedula NUMERIC UNIQUE,
    telefono DECIMAL(10),
    direccion VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS  transaccion(
    id INT PRIMARY KEY AUTO_INCREMENT,
    idMiembro INT,
    CONSTRAINT id_miembro_FK FOREIGN KEY (idMiembro) REFERENCES miembro(id)
);

CREATE TABLE IF NOT EXISTS  detalleTransaccion(
    id INT PRIMARY KEY AUTO_INCREMENT,
    fechaHora DATETIME,
    idTransaccion INT,
    CONSTRAINT id_transaccion_FK FOREIGN KEY (idTransaccion) REFERENCES transaccion(id)
);

CREATE TABLE IF NOT EXISTS generos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS  detalleGenero (
    id INT PRIMARY KEY AUTO_INCREMENT,
    idGenero INT,
    CONSTRAINT id_genero_FK FOREIGN KEY (idGenero) REFERENCES generos(id)
);

CREATE TABLE IF NOT EXISTS  publicacion(
    id INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATE,
    sitio VARCHAR(50)
);
CREATE TABLE IF NOT EXISTS  editor(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    idPublicacion INT,
    CONSTRAINT id_publicacion_FK FOREIGN KEY (idPublicacion) REFERENCES publicacion(id)
);

CREATE TABLE IF NOT EXISTS detalleEditor(
    id INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATE,
    idEditor INT,
    CONSTRAINT id_editor_FK FOREIGN KEY (idEditor) REFERENCES editor(id)
);

CREATE TABLE IF NOT EXISTS libros(
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(50),
    ISBN NUMERIC,
    Disponibilidad VARCHAR(20),
    idDetalleGenero INT,
    idDetalleEditor INT,
    idDetalleTransaccion INT,
    idLibroAutor INT,
    CONSTRAINT id_detalleGenero_FK FOREIGN KEY (idDetalleGenero) REFERENCES detalleGenero(id),
    CONSTRAINT id_detalleEditor_FK FOREIGN KEY (idDetalleEditor) REFERENCES detalleEditor(id),
    CONSTRAINT id_detalleTransaccion_FK FOREIGN KEY (idDetalleTransaccion) REFERENCES detalleTransaccion(id),
    CONSTRAINT id_libroAutor_FK FOREIGN KEY (idLibroAutor) REFERENCES libroAutor(id)
);