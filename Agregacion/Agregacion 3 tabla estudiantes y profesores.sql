select * from profesores
select * from estudiantes

select pr.codigo,es.nombre,es.apellido from 
estudiantes es,profesores pr
where 
pr.codigo = es.codigo_profesor and
apellido like '%n%'

select es.codigo_profesor,count(es.cedula)as total_estudiantes from
estudiantes es,profesores pr
where 
es.codigo_profesor = pr.codigo
group by es.codigo_profesor

select round(avg(extract(year from current_date)-extract(year from es.fecha_nacimiento))) as edad_promedio from
estudiantes es,profesores pr