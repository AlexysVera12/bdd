drop table transacciones;
create table transacciones(
	codigo int not null,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date not null,
	hora time not null,
	constraint transacciones_pk primary key(codigo)
);

insert into transacciones
values(10001,'34892',1200.50,'C','05/06/2025','09:45');

insert into transacciones
values(10002,'98431',300,'D','05/06/2025','10:12');

insert into transacciones
values(10003,'11234',580.75,'C','05/06/2025','11:03');

insert into transacciones
values(10004,'76129',90.00,'D','05/06/2025','12:30');

insert into transacciones
values(10005,'23018',420.40,'C','05/06/2025','13:47');

insert into transacciones
values(10006,'57482',710.00,'D','05/06/2025','14:05');

insert into transacciones
values(10007,'19384',100.00,'C','05/08/2025','15:15');

insert into transacciones
values(10008,'38745',250.60,'D','05/08/2025','16:00');

insert into transacciones
values(10009,'46298',1333.33,'C','05/06/2025','16:42');

insert into transacciones
values(10010,'83920',50.00,'D','05/08/2025','17:25');

select * from transacciones;
select * from transacciones where tipo = 'D';
select * from transacciones where monto between '200' and '2000';
select codigo,monto,tipo,fecha from transacciones where fecha is not null;

update transacciones set tipo  = 'T' where monto between money(100) and money(500) 
and fecha between '01/09/2025' and '30/09/2025' 
and hora between '14:00' and '20:00';

delete from transacciones where hora between '14:00' and '18:00' and fecha between '01/08/2025' and '31/08/2025'