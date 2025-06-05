create table  estudiantes_con_la_informacion(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date not null,
	constraint estudiantes_con_la_informacion_pk primary key(cedula)
)