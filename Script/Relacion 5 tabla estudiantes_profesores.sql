
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