
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