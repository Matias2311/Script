create database Marketplace;

use Marketplace;
select *from comprador;
create table comprador(
id INT PRIMARY KEY,
id_comprador INT,
telefono VARCHAR(32),
nombre_completo VARCHAR (32),
email VARCHAR(32),
estado_de_linea VARCHAR(32),
reputacion VARCHAR (32)
);
create table vendedor(
id INT PRIMARY KEY,
id_vendedor INT,
telefono VARCHAR(32),
nombre_completo VARCHAR (32),
email VARCHAR(32),
estado_de_linea VARCHAR(32),
reputacion VARCHAR (32)
);

create table producto(
id INT PRIMARY KEY,
id_producto INT,
estado VARCHAR(32),
descripcion VARCHAR(100),
categoria VARCHAR(32)
);

create table orden(
id INT PRIMARY KEY,
id_orden INT,
precio INT,
cantidad FLOAT,
id_comprador INT,
id_vendedor INT,
id_producto INT,
FOREIGN KEY(id_comprador)
REFERENCES comprador(id),
FOREIGN KEY(id_vendedor)
REFERENCES vendedor(id),
FOREIGN KEY (id_producto)
REFERENCES producto(id)
);

INSERT INTO comprador(id,telefono,nombre_completo,email,estado_de_linea,reputacion) VALUES
(1,"1145678901","Sergio Oscar Godoy", "SergioGodoy14@gmail.com","activo cada seis horas","buena"),
(2,"1185377955","Javier Nicolas Ramirez", "JaviiiR230@gmail.com","activo cada tres horas","muy buena"),
(3,"1191882340","Manuela Sofia Fernandez", "SofiaFer02@gmail.com","activo cada doce horas","neutral");

INSERT INTO vendedor(id,telefono,nombre_completo,email,estado_de_linea,reputacion) VALUES
(1,"1190872344","Rocio Sanchez", "RocioSanchezz@gmail.com","activo cada dos horas","excelente"),
(2,"1147659102","Braian Franco Juarez", "Juarez9970@gmail.com","activo cada dos dias","mala"),
(3,"1150289423","Florencia Yessica Lopez", "FlorYesii@gmail.com","activo cada tres dias","buena");

INSERT INTO producto(nombre,id_producto,estado,descripcion,categoria) VALUES
(1,"Shampoo anticaspa 3en1","nuevo","Shampoo de reconocida marca para la higiene masculina","Belleza y cuidados"),
(2,"Mueble usado de pino","poco uso","mueble de pino impecable,lo estoy vendiendo por mudanza","armarios y muebles"),
(3,"Guitara criolla a estrenar","nuevo","Guitarra criolla nueva de la marca Pirulo incluye tres puas","Instrumentos");

INSERT INTO orden(id,precio,cantidad,id_comprador,id_vendedor,id_producto) VALUES
(1,"1000","1","Sergio Godoy","Rocio Sanchez","Shampoo amticaspa 3en1"),
(2,"9000","1","Javier Ramirez","Braian Juarez","Mueble usado de pino"),
(3,"12000","1","Manuela Fernandez","Florencia Lopez","Guitarra criolla a estrenar");






