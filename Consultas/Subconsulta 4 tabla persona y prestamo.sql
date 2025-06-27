select pe.* from 
persona pe, prestamo pr
where 
pe.cedula = pr.cedula and
pr.cedula in (select cedula from persona where nombre = 'Sean')