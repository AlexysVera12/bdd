
select * from persona
select * from prestamo

create table prestamo(
	cedula char(10),
	monto money,
	fecha_prestamo date,
	hora_prestamo time,
	garante varchar(40),
	constraint prestamo_pk primary key(cedula)
)

alter table persona
add constraint persona_prestamo_fk
foreign key(cedula)
references prestamo(cedula)

insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values
	('1010101010',  950.00,  '2023-09-01', '09:15:00', 'Carlos Jiménez'),
  ('2020202020',  875.50,  '2023-09-10', '10:30:00', 'Lucía Mendoza'),
  ('3030303030',  720.25,  '2023-09-20', '11:05:00', 'Valeria Ruiz'),
  ('4040404040',  650.00,  '2023-10-02', '08:45:00', 'Mateo Herrera'),
  ('5050505050',  100.00,  '2023-10-15', '12:00:00', 'Camila León'),
  ('6060606060',  400.75,  '2023-11-01', '08:00:00', 'Esteban Ríos'),
  ('7070707070',  999.99,  '2023-11-12', '09:20:00', 'Paola Cedeño'),
  ('8080808080',  325.60,  '2023-11-25', '10:45:00', 'Andrés Silva'),
  ('9090909090',  785.00,  '2023-12-05', '09:40:00', 'Natalia Soto'),
  ('1111111111',  550.00,  '2023-12-20', '10:10:00', 'Claudia Romero');

insert into persona(cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values
	  ('1010101010', 'Sean',     'Mendoza',     1.78, '1995-04-12', '06:15:00',  2500.00, 1),
  ('2020202020', 'Lucía',    'González',    1.65, '1998-09-30', '11:20:00',  1800.50, 0),
  ('3030303030', 'Carlos',   'Ramírez',     1.72, '1990-01-10', '03:40:00',  3250.75, 2),
  ('4040404040', 'Valeria',  'Núñez',       1.60, '1989-07-25', '00:05:00',  4100.00, 3),
  ('5050505050', 'Mateo',    'Zambrano',    1.83, '2000-12-05', '08:30:00',   950.00, 0),
  ('6060606060', 'Camila',   'Vera',        1.67, '1997-11-15', '13:45:00',  1700.00, 1),
  ('7070707070', 'Andrés',   'Benítez',     1.75, '1994-03-20', '02:25:00',  2950.25, 2),
  ('8080808080', 'Paola',    'Navarrete',   1.61, '1991-05-06', '10:10:00',  2200.00, 1),
  ('9090909090', 'Esteban',  'Ortiz',       1.80, '1996-08-17', '04:50:00',  3350.60, 0),
  ('1111111111', 'Sofía',    'Cedeño',      1.63, '2001-02-02', '07:00:00',  1450.30, 2);