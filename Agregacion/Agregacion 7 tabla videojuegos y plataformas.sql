select * from videojuegos
select * from plataformas

select * from 
videojuegos vi,plataformas pl
where 
vi.codigo = pl.codigo_videojuego and
(vi.descripcion like ('%guerra%') and vi.valoracion > 7 or 
(((vi.nombre LIKE 'C%' OR vi.nombre LIKE 'D%') AND vi.valoracion > 8)))

select codigo_videojuego,count(id_plataforma) as total_plataformas from
plataformas
group by codigo_videojuego

select round (avg(valoracion),2) as valoracion_promedio from
videojuegos
