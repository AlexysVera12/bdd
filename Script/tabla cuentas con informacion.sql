create table cuentas_con_la_informacion(
	numero_cuenta char(5) not null,
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_con_la_informacion_pk primary key(numero_cuenta)
)