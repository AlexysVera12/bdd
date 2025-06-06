drop table productos;
create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key(codigo)
);
insert into productos(codigo,nombre,descripcion,precio,stock)
values(1001,'Mouse Inalámbrico','Mouse ergonómico con conexión Bluetooth',15.99,120);

insert into productos(codigo,nombre,descripcion,precio,stock)
values(1002,'Teclado Mecánico','Teclado retroiluminado con switches azules',39.99,75);

insert into productos(codigo,nombre,descripcion,precio,stock)
values(1003,'Monitor 24" LED','Monitor Full HD con tecnología antirreflejo',129.99,45);

insert into productos(codigo,nombre,descripcion,precio,stock)
values(1004,'Auriculares Gamer','Auriculares con micrófono y sonido envolvente',29.50,60);

insert into productos(codigo,nombre,descripcion,precio,stock)
values(1005,'Disco SSD 1TB','Unidad de estado sólido con velocidad de lectura alta',89.90,38);

insert into productos(codigo,nombre,precio,stock)
values(1006,'Webcam HD',24.99,80);

insert into productos(codigo,nombre,precio,stock)
values(1007,'Cargador USB-C',18.75	,150);

insert into productos(codigo,nombre,precio,stock)
values(1008,'Silla Ergonómica',149.00,20);

select * from productos