select * from empleado
select * from registros_entrada

select re.codigo_registro,em.nombre from
registros_entrada re, empleado em
where 
re.codigo_empleado = em.codigo_empleado and
em.codigo_empleado in (select codigo_empleado from registros_entrada where codigo_empleado = '2201')