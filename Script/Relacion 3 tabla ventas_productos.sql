delete from productos
select * from productos

create table ventas(
	id_venta int,
	codigo_producto int not null,
	fecha_venta date not null,
	cantidad int,
	constraint ventas_pk primary key(id_venta)
)

alter table ventas
add constraint ventas_producto_fk
foreign key (codigo_producto)
references productos(codigo)