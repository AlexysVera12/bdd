select * from cuentas
select * from usuario

select cu.numero_cuenta,us.nombre from
cuentas cu,usuario us
where 
cu.cedula_propietario = us.cedula and
cu.saldo between money(100) and money(1000)

select avg(cast(saldo as numeric)) from cuentas
where cedula_propietario = '17231'

select tipo_cuenta,count(cu.numero_cuenta)as total_cuentas from 
cuentas cu, usuario us
group by us.tipo_cuenta