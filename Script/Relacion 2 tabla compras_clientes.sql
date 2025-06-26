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