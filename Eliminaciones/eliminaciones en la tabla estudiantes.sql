drop table estudiantes;
create table  estudiantes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date not null,
	constraint estudiantes_pk primary key(cedula)
);

insert into estudiantes
values('1029384756','Mariana','Rodríguez','mariana.rodri@example.com','15/04/2002');

insert into estudiantes
values('1092837465','Carlos Andrés','Pérez','carlos.perez@example.com','22/08/2000');

insert into estudiantes
values('1234567890','Lucía','Gómez Fernández','lucia.gomez@example.com','01/12/2001');

insert into estudiantes
values('1122334455','Juan Manuel','Torres','juan.torres@example.com','09/03/1999');

insert into estudiantes
values('9988776655','Valentina','Castillo Morales','valen.castillo@example.com','17/06/2003');

insert into estudiantes
values('8877665544','Alejandro','Martínez Rivas','ale.martinez@example.com','30/11/2000');

insert into estudiantes
values('1766554433','Camila Sofía','Herrera','camila.herrera@example.com','25/05/2002');

insert into estudiantes
values('1755443305','Diego','Ramírez Vásquez','diego.ramirez@example.com','12/09/2001');

select * from estudiantes;
select nombre,cedula from estudiantes;
select nombre from estudiantes where cedula like '17%';
select nombre,apellido from estudiantes where nombre like 'A%';

update estudiantes set apellido='Hernandez' where cedula like '17%';

delete from estudiantes where cedula like '%05'
