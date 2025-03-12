# Examen MYSQL

## Consultas 

### Listar todos los libros disponibles
    SELECT titulo,id, Disponibilidad  FROM libros WHERE Disponilidad = 'disponible';

### Obtener información de un libro por ISBN
    SELECT id, ISBN, nombre, idLibroAutor FROM libros WHERE ISBN='789456123';

### Contar el número de libros en la biblioteca
    SELECT COUNT(id) FROM  libros;

### Listar todos los autores
    SELECT nombre FROM autores;

### Buscar autores por nombre
    SELECT nombre FROM autors  WHERE nombre= 'Jorge Isaac';
### Listar todos los miembros de la biblioteca
    SELECT nombre, id FROM  miembro;
### Buscar un miembro por nombre
    SELECT nombre FROM miembro WHERE nombre= 'Valentina';

    