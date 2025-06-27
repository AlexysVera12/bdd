
select pl.* from 
videojuegos vi, plataformas pl
where 
vi.codigo = pl.codigo_videojuego and
pl.codigo_videojuego in (select codigo from videojuegos where nombre like '%God of War%' )