select * from cuentas
select * from usuario

select * from
cuentas cu,usuario us
where 
cu.cedula_propietario = us.cedula and
cu.fecha_creacion between '2022-09-21' and '2023-09-21' 