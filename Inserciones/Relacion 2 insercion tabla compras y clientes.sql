delete from clientes;
select * from clientes
select * from compras
create table compras(
	id_compra int,
	cedula char(10) not null,
	fecha_compra date not null,
	monto decimal(10,2),
	constraint compras_pk primary key(id_compra)
)

alter table compras
add constraint compras_clientes_fk
foreign key (cedula)
references clientes(cedula)

insert into clientes (cedula,nombre,apellido,edad)
values
	('17231', 'Carlos',    'Martínez',    34),
  ('17543', 'Monica',       'González',    28),
  ('18219', 'Luis',      'Ramírez',     41),
  ('19220', 'Paola',     'Mendoza',     36),
  ('16321', 'Diego',     'Hidalgo',     30),
  ('14533', 'Lucía',     'Salazar',     26),
  ('15324', 'Esteban',   'Ortiz',       39),
  ('18345', 'Mariana',   'Acosta',      31),
  ('17456', 'Jorge',     'Navarrete',   45),
  ('16432', 'Valentina', 'Zambrano',    33);

  insert into compras (id_compra,cedula,fecha_compra,monto)
values
	(1, '17231', '2023-01-05', 250.00),
  (2, '17543', '2023-01-20', 380.50),
  (3, '18219', '2023-02-10', 1199.99),
  (4, '19220', '2023-02-28', 75.60),
  (5, '16321', '2023-03-15', 460.00),
  (6, '14533', '2023-04-01', 2400.00),
  (7, '15324', '2023-04-19', 320.45),
  (8, '18345', '2023-05-04', 980.00),
  (9, '17456', '2023-06-10', 129.99),
  (10, '16432', '2023-06-30', 1430.75);