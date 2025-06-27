select * from clientes
select * from compras 
select cl.nombre,cl.apellido from
clientes cl,compras cr
where 
cl.cedula = cr.cedula and
cl.cedula like '%7%'