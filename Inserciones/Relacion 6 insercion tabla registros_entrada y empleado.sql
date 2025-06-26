delete from registros_entrada
select * from registros_entrada
select * from empleado

alter table registros_entrada
add column codigo_empleado int not null

create table empleado(
	codigo_empleado int not null,
	nombre varchar(25) not null,
	fecha date not null,
	hora time not null,
	constraint empleado_pk primary key(codigo_empleado)
)

alter table registros_entrada
add constraint registros_entrada_empleado_fk
foreign key(codigo_empleado)
references empleado(codigo_empleado)

insert into empleado(codigo_empleado,nombre,fecha,hora)
values
	(2201, 'Natalia Soto',     '2023-08-03', '08:15:00'),
  (502,  'Lucía Torres',     '2023-08-10', '08:45:00'),
  (503,  'Carlos Jiménez',   '2023-09-01', '09:00:00'),
  (504,  'Valeria Ruiz',     '2023-09-12', '10:30:00'),
  (505,  'Mateo Herrera',    '2023-10-05', '11:15:00'),
  (506,  'Sofía Medina',     '2023-10-17', '08:05:00'),
  (507,  'Andrés Silva',     '2023-11-03', '12:00:00'),
  (508,  'Camila León',      '2023-11-20', '09:45:00'),
  (509,  'Esteban Ríos',     '2023-12-08', '13:00:00'),
  (510,  'Paola Cedeño',     '2023-12-19', '08:30:00');

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values
	(1, '0123456789', '2023-08-01', '08:00:00', 2201),
  (2, '0987654321', '2023-08-02', '08:10:00', 502),
  (3, '1122334455', '2023-08-03', '08:20:00', 503),
  (4, '5566778899', '2023-08-04', '08:05:00', 504),
  (5, '6677889900', '2023-08-07', '08:30:00', 505),
  (6, '1029384756', '2023-08-08', '09:00:00', 506),
  (7, '5647382910', '2023-08-09', '09:15:00', 507),
  (8, '9182736450', '2023-08-10', '08:45:00', 508),
  (9, '0192837465', '2023-08-11', '08:25:00', 509),
  (10, '8273645190', '2023-08-14', '09:05:00', 510);