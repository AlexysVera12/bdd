drop table registros_entrada;
create table registros_entrada(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	constraint registro_entrada_pk primary key(codigo_registro) 
);
insert into registros_entrada
values(10001,'1234567890','06/06/2025','08:00');

insert into registros_entrada
values(10002,'0987654321','06/06/2025','08:05');

insert into registros_entrada
values(10003,'1122334455','06/06/2025','07:55');

insert into registros_entrada
values(10004,'2233445566','06/06/2025','08:10');

insert into registros_entrada
values(10005,'3344556677','06/06/2025','08:03');

insert into registros_entrada
values(10006,'4455667788','06/06/2025','07:59');

insert into registros_entrada
values(10007,'5566778899','06/06/2025','08:12');

insert into registros_entrada
values(10008,'6677889900','06/06/2025','08:07');

insert into registros_entrada
values(10009,'7788990011','06/06/2025','08:01');

insert into registros_entrada
values(10010,'8899001122','06/06/2025','08:04');

select * from registros_entrada