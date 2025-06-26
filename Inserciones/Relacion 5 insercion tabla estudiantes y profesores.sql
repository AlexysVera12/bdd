
delete from estudiantes
select * from estudiantes
select * from profesores

alter table estudiantes
add column codigo_profesor int

create table profesores(
	codigo int,
	nombre varchar(50) not null,
	constraint profesores_pk primary key(codigo)
)

alter table estudiantes
add constraint estudiantes_profesores_fk
foreign key(codigo_profesor)
references profesores(codigo)

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor)
values
	('0123456789', 'Andrés',   'Montero',   'andres.montero@email.com',   '2001-03-15', 101),
  ('0987654321', 'Lucía',    'Ramírez',   'lucia.ramirez@email.com',    '2000-07-22', 102),
  ('1122334455', 'Santiago', 'Benítez',   's.benitez@email.com',        '2002-01-30', 101),
  ('5566778899', 'Valeria',  'Cárdenas',  'val.cardenas@email.com',     '2001-11-09', 103),
  ('6677889900', 'Jorge',    'Núñez',     'jorge.nunez@email.com',      '2003-05-02', 102),
  ('1029384756', 'Daniela',  'Morales',   'daniela.morales@email.com',  '2000-12-14', 104),
  ('5647382910', 'Mateo',    'Paredes',   'mateo.paredes@email.com',    '2002-09-19', 101),
  ('9182736450', 'Camila',   'Sánchez',   'camila.sanchez@email.com',   '2001-06-06', 103),
  ('0192837465', 'Esteban',  'Vélez',     'esteban.velez@email.com',    '1999-08-27', 104),
  ('8273645190', 'Sofía',    'Manzano',   'sofia.manzano@email.com',    '2003-02-13', 102);

insert into profesores (codigo, nombre)
values
  (101, 'Francisco Ruiz'),
  (102, 'Natalia Herrera'),
  (103, 'Javier Mendoza'),
  (104, 'Claudia Romero'),
  (105, 'Fernando Torres'),
  (106, 'Beatriz Zamora'),
  (107, 'Ricardo Domínguez'),
  (108, 'Andrea Palacios'),
  (109, 'Luis Cárdenas'),
  (110, 'Rosa Muñoz');
