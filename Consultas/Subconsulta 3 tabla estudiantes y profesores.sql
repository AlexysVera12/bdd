select * from profesores

select es.cedula,es.nombre,es.apellido,es.email,es.fecha_nacimiento,es.codigo_profesor from 
estudiantes es,profesores pr
where 
pr.codigo = es.codigo_profesor and
es.codigo_profesor in (select codigo from profesores where nombre like '%Francisco%')