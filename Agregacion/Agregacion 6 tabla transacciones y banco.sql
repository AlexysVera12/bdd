select * from banco
select * from transacciones

select * from
transacciones tr,banco ba
where
tr.codigo = ba.codigo_transaccion and
tr.tipo = 'C' and tr.numero_cuenta between '22001' and '22004'

select count(codigo)as total_transacciones_credito from
transacciones
where tipo = 'C'

select numero_cuenta,round(avg(cast(monto as decimal)),2) as monto_promedio from
transacciones
group by numero_cuenta