-- Tabla para los estudiantes
CREATE TABLE estudiante (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    matricula VARCHAR(20) UNIQUE NOT NULL,
    carrera VARCHAR(100)
);

-- Tabla para los libros
CREATE TABLE libro (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(255) NOT NULL,
    anio_publicacion INTEGER,
    isbn VARCHAR(50) UNIQUE NOT NULL
);

-- Tabla para los préstamos
CREATE TABLE prestamo (
    id SERIAL PRIMARY KEY,
    estudiante_id INTEGER REFERENCES estudiante(id),
    libro_id INTEGER REFERENCES libro(id),
    fecha_prestamo DATE NOT NULL,
    fecha_devolucion DATE,
    estado VARCHAR(50) CHECK (estado IN ('activo', 'devuelto')) NOT NULL
);
