
select cl.cedula,cl.nombre,cl.apellido,cl.edad from
clientes cl, compras cr
where 
cl.cedula = cr.cedula and
cr.cedula in (select cedula from clientes where nombre = 'Monica');