delete from transacciones
select * from transacciones
select * from banco

create table banco(
	codigo_banco int,
	codigo_transaccion int,
	detalle varchar(100),
	constraint banco_pk primary key(codigo_banco)
)

alter table banco
add constraint banco_transacciones_fk
foreign key(codigo_transaccion)
references transacciones(codigo)

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora)
VALUES
  (1, 'A1001', 250.00, 'C', '2023-08-01', '09:00:00'),
  (2, 'A1002', 120.50, 'D', '2023-08-02', '09:30:00'),
  (3, 'A1003', 875.75, 'C', '2023-08-03', '10:15:00'),
  (4, 'A1004', 500.00, 'D', '2023-08-04', '10:45:00'),
  (5, 'A1005', 999.99, 'C', '2023-08-05', '11:00:00'),
  (6, 'A1001', 180.00, 'D', '2023-08-06', '11:30:00'),
  (7, 'A1002', 400.00, 'C', '2023-08-07', '12:00:00'),
  (8, 'A1003', 150.25, 'D', '2023-08-08', '12:30:00'),
  (9, 'A1004', 320.00, 'C', '2023-08-09', '13:15:00'),
  (10,'A1005', 225.50, 'D', '2023-08-10', '13:45:00');


insert into banco(codigo_banco,codigo_transaccion,detalle)
values
	(101, 1, 'Depósito en cuenta de ahorros'),
  (102, 2, 'Transferencia a cuenta externa'),
  (103, 3, 'Retiro por cajero automático'),
  (104, 4, 'Pago de tarjeta de crédito'),
  (105, 5, 'Depósito de cheque'),
  (106, 6, 'Compra en línea con débito'),
  (107, 7, 'Pago de servicios básicos'),
  (108, 8, 'Transferencia entre cuentas propias'),
  (109, 9, 'Recarga de teléfono móvil'),
  (110, 10, 'Pago de préstamo bancario');