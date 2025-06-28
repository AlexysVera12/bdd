select * from productos
select * from ventas

select pr.nombre,pr.stock,ve.cantidad from
productos pr,ventas ve
where 
pr.codigo = ve.codigo_producto and
(pr.nombre like '%m%' or 
pr.descripcion is null)

select max(precio) as precio_maximo from
productos

select sum(cantidad)as cantidad_total_vendida from
ventas