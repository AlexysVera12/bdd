select * from productos 

select pr.nombre,pr.stock from 
productos pr, ventas ve
where
pr.codigo = ve.codigo_producto and
pr.codigo in (select codigo_producto from ventas where cantidad = 5)
