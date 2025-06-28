select * from empleado
select * from registros_entrada

select re.cedula_empleado,re.fecha,em.nombre from
registros_entrada re, empleado em
where 
re.codigo_empleado = em.codigo_empleado and
((re.fecha between '2023-08-01' and '2023-08-31') or
(re.cedula_empleado like '17%' and em.hora between '08:00' and '12:00') or
(em.fecha between '2023-10-06' and '2023-10-20' and re.cedula_empleado like '08%' and re.hora between '09:00' and '13:00')) 

select cedula_empleado,count(codigo_registro) as total_registros_entrada from
registros_entrada
group by cedula_empleado

select min(fecha)as fecha_minima, max(fecha) as fecha_maxima from
registros_entrada