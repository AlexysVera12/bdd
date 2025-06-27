select * from profesores
select * from estudiantes

select pr.codigo,es.nombre,es.apellido from 
estudiantes es,profesores pr
where 
pr.codigo = es.codigo_profesor and
apellido like '%n%'