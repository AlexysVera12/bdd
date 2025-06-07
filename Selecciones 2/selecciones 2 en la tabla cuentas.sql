drop table cuentas;
create table cuentas(
	numero_cuenta char(5) not null,
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key(numero_cuenta)
);

insert into cuentas
values('48125','10245','12/03/2025',1250);

insert into cuentas
values('92741','58420','25/07/2019',3487);

insert into cuentas
values('71304','32158','30/11/2022',820);

insert into cuentas
values('66012','96547','18/05/2025',5102);

insert into cuentas
values('54098','24680','01/01/2020',2300);

insert into cuentas
values('37159','77451','09/09/2023',985);

insert into cuentas
values('88901','17932','15/02/2021',4675);

insert into cuentas
values('10234','50001','22/06/2020',3333);

insert into cuentas
values('17456','17888','05/08/2022',1125);

insert into cuentas
values('99887','43521','05/05/2025',7800);

select * from cuentas;
select numero_cuenta,saldo from cuentas;
select * from cuentas 
where fecha_creacion
between '06/04/2025' and '06/06/2025';
select numero_cuenta,saldo from cuentas 
where fecha_creacion 
between '06/04/2025' and '06/06/2025';

update cuentas set saldo = 10 where cedula_propietario like '17%';

delete from cuentas where cedula_propietario like '10%';

select numero_cuenta,saldo from cuentas where saldo between money(100) and money(1000);
select *  from cuentas where fecha_creacion between '07/06/2024' and '07/06/2025';
select * from cuentas where saldo = money(0) or cedula_propietario like '%2'