select * from persona
select * from prestamo
select pe.cantidad_ahorrada,pr.monto,pr.garante from
persona pe, prestamo pr
where 
pe.cedula = pr.cedula and
pr.monto between money(100) and money(1000)

select pr.cedula, sum(pr.monto) as monto_total_prestamos from
persona pe,prestamo pr
where pe.cedula = pr.cedula 
group by pr.cedula

select count(cedula) as total_personas from
persona
where numero_hijos > 1