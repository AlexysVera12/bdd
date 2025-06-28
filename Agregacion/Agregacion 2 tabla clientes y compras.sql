select * from clientes
select * from compras 

select cl.nombre,cl.apellido from
clientes cl,compras cr
where 
cl.cedula = cr.cedula and
cl.cedula like '%7%'

select cl.cedula, sum(co.monto) as monto_total_compras from
clientes cl, compras co
where cl.cedula = co.cedula
group by cl.cedula

select co.fecha_compra, count(co.fecha_compra) from
clientes cl, compras co
where 
cl.cedula = co.cedula and
co.fecha_compra = '2023-02-10'
group by co.fecha_compra
