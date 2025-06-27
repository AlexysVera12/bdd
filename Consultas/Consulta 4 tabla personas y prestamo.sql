
select pe.cantidad_ahorrada,pr.monto,pr.garante from
persona pe, prestamo pr
where 
pe.cedula = pr.cedula and
pr.monto between money(100) and money(1000)