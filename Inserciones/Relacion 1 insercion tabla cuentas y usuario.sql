

delete from cuentas
select * from cuentas
select * from usuario

create table usuario(
	cedula char(5) not null,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	tipo_cuenta varchar(20),
	limite_credito decimal(10,5),
	constraint usuario_pk primary key(cedula)
)

alter table cuentas
add constraint cuentas_usuario_fk
foreign key (cedula_propietario)
references usuario(cedula)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values
	('00001', '17231', '2022-08-21', 500.00),
  	('00002', '17543', '2022-08-22', 850.75),
  	('00003', '18219', '2022-08-24', 1500.00),
  	('00004', '19220', '2022-08-23', 325.60),
  	('00005', '16321', '2023-08-25', 1200.00),
  	('00006', '14533', '2023-08-26', 430.00),
  	('00007', '15324', '2023-09-19', 700.45),
  	('00008', '18345', '2023-09-18', 999.99),
  	('00009', '17456', '2024-09-17', 250.00),
  	('00010', '16432', '2024-09-16', 1350.00);
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values
  ('17231','Carlos','Martínez','Corriente',1500.00000),
  ('17543','Ana','González','Ahorros',1000.00000),
  ('18219','Luis','Ramírez','Crédito',3000.50000),
  ('19220','Paola','Mendoza','Corriente',2000.00000),
  ('16321','Diego','Hidalgo','Ahorros',800.00000),
  ('14533','Lucía','Salazar','Crédito',2500.75000),
  ('15324','Esteban','Ortiz','Corriente',1200.00000),
  ('18345','Mariana','Acosta','Ahorros',950.00000),
  ('17456','Jorge','Navarrete','Crédito',3500.00000),
  ('16432','Valentina','Zambrano','Corriente',1800.30000);
