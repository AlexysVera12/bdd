select * from banco
select tr.* from
transacciones tr,banco ba
where 
tr.codigo = ba.codigo_transaccion and
tr.codigo in (select codigo_transaccion from banco where codigo_banco = 1)

 