delete from productos
select * from productos
select * from ventas

create table ventas(
	id_venta int,
	codigo_producto int not null,
	fecha_venta date not null,
	cantidad int,
	constraint ventas_pk primary key(id_venta)
)

alter table ventas
add constraint ventas_producto_fk
foreign key (codigo_producto)
references productos(codigo)

insert into productos(codigo,nombre,descripcion,precio,stock)
values
	 (2001,'Balón de Fútbol','Balón oficial tamaño 5 para partidos profesionales',32.50,20),
  (2002,'Raqueta de Tenis','Raqueta ligera de grafito para jugadores intermedios',89.90,12),
  (2003,'Camiseta Running','Camiseta térmica con tecnología anti-sudor',24.00,  35),
  (2004,'Zapatillas Trail','Calzado con suela de agarre para senderismo',110.00, 15),
  (2005,'Bicicleta de Montaña','Bicicleta con suspensión doble y cambios Shimano',450.00,6),
  (2006,'Guantes de Boxeo','Guantes acolchados de cuero sintético',60.00,18),
  (2007,'Short Deportivo', null, 19.99,  25),
  (2008,'Medias Compresión','Mejoran la circulación durante entrenamientos largos', 15.50,40),
  (2009,'Rodillera Deportiva','Soporte ajustable para prevenir lesiones de rodilla', 22.00,30),
  (2010,'Casco de Ciclismo','Casco aerodinámico con ventilación',75.00,10);

insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values 
	(1, 2001, '2023-01-10', 2),
  (2, 2002, '2023-01-15', 1),
  (3, 2003, '2023-02-05', 5),
  (4, 2004, '2023-02-18', 3),
  (5, 2005, '2023-03-02', 5),
  (6, 2006, '2023-03-20', 2),
  (7, 2007, '2023-04-07', 5),
  (8, 2008, '2023-05-01', 1),
  (9, 2009, '2023-06-12', 2),
  (10,2010, '2023-06-30', 4);