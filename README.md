# Examen MYSQL

## Consultas 

### Listar todos los libros disponibles
    SELECT titulo,id, Disponibilidad  FROM libros WHERE Disponibilidad = 'disponible';
### Buscar libros por género
    SELECT idDetalleGenero,id, titulo FROM libros; ------
### Obtener información de un libro por ISBN
    SELECT id, ISBN, titulo, idLibroAutor FROM libros WHERE ISBN='515645646';
### Contar el número de libros en la biblioteca
    SELECT COUNT(id) FROM  libros;
### Listar todos los autores
    SELECT nombre, id FROM autores;
### Buscar autores por nombre
    SELECT nombre FROM autores  WHERE nombre= 'Jorge Isaac';
### Obtener todos los libros de un autor específico
    SELECT titulo FROM libros
    INNER JOIN libroAutor ON libros.idLibroAutor = libroAutor.idAutores 
    INNER JOIN autores ON libroAutor.idAutores = autores.nombre WHERE nombre='Gabriel Garcia';  
### Contar el número de transacciones de un miembro específico
    SELECT COUNT(idTransacciones) FROM transaccion WHERE idMiembro= 1;
### Listar todos los miembros de la biblioteca
    SELECT nombre, id FROM  miembro;
### Buscar un miembro por nombre
    SELECT nombre FROM miembro WHERE nombre= 'Valentina';
### Obtener las transacciones de un miembro específico
    SELECT miembros.nombre, transaccion.id FROM miembros
    INNER JOIN transaccion ON miembros.id = transaccion.idMiembro;
### Listar todos los libros y sus autores
    SELECT libros.titulo, autores.nombre, libroAutor.idAutores FROM libros
    INNER JOIN libroAutor ON libros.idlibroAutor = libroAutor.idAutores
    INNER JOIN libroAutor ON autores.id = libroAutor.idAutores;
### Obtener el historial de préstamos de un libro específico
    SELECT  titulo,ISBN, idDetalleTransaccion FROM libros WHERE titulo='Cien Años de Soldedad';
### Contar cuántos libros han sido prestados en total
    SELECT id,titulo FROM libros WHERE Disponibilidad= 'prestado';

