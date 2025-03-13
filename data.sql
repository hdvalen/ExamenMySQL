INSERT INTO autores(nombre, fechaNacimiento) VALUES ('Gabriel Garcia','1996-02-15'),('Jorge Isaac', '1986-12-20');
INSERT INTO libroAutor(idAutores) VALUES (1);
INSERT INTO miembro(nombre,cedula,telefono,direccion) VALUES ('Valentina Caballero', '1097785219','3165709685','carrera 6 5-25'),('Omar Cardona', '1026558562','3205694556','calle 50 30-5');
INSERT INTO transaccion(idMiembro) VALUES (1);
INSERT INTO transaccion(idMiembro) VALUES (2);
INSERT INTO detalleTransaccion(fechaHora,idTransaccion) VALUES ('2025-01-02 16:30',2), ('2025-03-10 9:30',1), ('2024-08-11 12:30',1);
INSERT INTO generos(nombre) VALUES ('Accion'), ('Romance'), ('Ciencia Ficcion'), ('Terror');
INSERT INTO detalleGenero(idGenero) VALUES (1), (2), (3), (4);
INSERT INTO publicacion(fecha,sitio) VALUES ('2025-01-10','Instagram'), ('2025-02-16', 'Facebook'),('2025-02-08', 'Sitio Web'), ('2024-12-05', 'Sitio Web');
INSERT INTO editor(nombre, idPublicacion) VALUES ('Isabela Gavis', 1), ('Mariana Vargas', 2), ('Andres Araque', 3),('Raul Santiago',4);
INSERT INTO detalleEditor(fecha,idEditor) VALUES ('2025-01-12',1),('2025-02-16',2),('2025-03-10',3);.
INSERT INTO libros(titulo,ISBN,Disponibilidad,idDetalleGenero, idDetalleEditor, idDetalleTransaccion, idLibroAutor) VALUES ('Cien Años de Soldedad', 515645646, 'disponible', 1,1,1,1),('Boulevard',0326566,'prestado',2,2,2,2);