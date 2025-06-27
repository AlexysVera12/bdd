select * from cuentas
select * from usuario

select cu.numero_cuenta,us.nombre from
cuentas cu,usuario us
where 
cu.cedula_propietario = us.cedula and
cu.saldo between money(100) and money(1000)