CREATE DATABASE cine;
USE cine;

CREATE TABLE peliculas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR (100),
    anio_estreno INT,
    recaudacion FLOAT,
    director VARCHAR(100),
    plataforma_streaming VARCHAR (50)
);

INSERT INTO peliculas (nombre, anio_estreno, recaudacion, director, plataforma_streaming) VALUES
("titanic", 2020, 100.5, "James Cameron", "Netflix"),
("Avatar", 2019, 75.2, "Brad Pitt", "Amazon Prime Video"),
("Punto Limite", 2021, 120.0, "Leo Di Caprio", "HBO Max");

SELECT * FROM peliculas;

ALTER TABLE peliculas ADD tiene_streaming BOOLEAN;

UPDATE peliculas SET tiene_streaming = 0;

INSERT INTO peliculas (nombre, anio_estreno, recaudacion, director, plataforma_streaming,tiene_streaming)
VALUES
("Mujer Bonita",2018, 98.3, "Antonio Banderas", "Hulu", 1),
("Hombre Lobo", 2022, 65.1, "Tom Cruise", NULL, 0); 

ALTER TABLE peliculas
   ALTER COLUMN plataforma_streaming SET DEFAULT "no tiene",
   ALTER COLUMN tiene_streaming SET DEFAULT false;

INSERT INTO peliculas (nombre, anio_estreno, recaudacion, director) VALUES
   ("Hulk", 2023, 50.2, "Vin Diesel");

 ALTER TABLE peliculas
 ADD buena_recaudacion BOOLEAN DEFAULT (recaudacion > 80.5);

UPDATE peliculas SET tiene_streaming = DEFAULT;



 



INSERT INTO peliculas (nombre, anio_estreno, recaudacion, director, plataforma_streaming) VALUES
   ("Rapido y Furioso", 2024, 80.5, "Toreto", "Netflix");

ALTER TABLE peliculas ALTER COLUMN tiene_streaming SET DEFAULT (plataforma_streaming != "no tiene");

  UPDATE peliculas SET plataforma_streaming = DEFAULT WHERE plataforma_streaming IS NULL;
  UPDATE peliculas SET tiene_streaming = DEFAULT;

  ALTER TABLE peliculas ALTER COLUMN buena_recaudacion
  SET DEFAULT (recaudacion > 67.0);

  UPDATE peliculas SET buena_recaudacion = DEFAULT; 