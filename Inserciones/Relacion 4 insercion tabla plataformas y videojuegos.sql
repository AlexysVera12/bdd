
delete from videojuegos
select * from videojuegos
select * from plataformas

create table plataformas(
	id_plataforma int,
	nombre_plataforma varchar(50),
	codigo_videojuego int,
	constraint plataformas_pk primary key(id_plataforma)
)

alter table plataformas
add constraint plataformas_videojuegos_fk
foreign key(codigo_videojuego)
references videojuegos(codigo)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values
	(3001,'God of War Ragnarök','Kratos y Atreus enfrentan el destino en medio de una nueva guerra entre dioses y gigantes.',95),
  (3002,'Call of Duty: Modern Warfare','Intensa campaña táctica con escenarios de guerra urbana moderna.',91),
  (3003,'Cyberpunk 2077','RPG de mundo abierto ambientado en una metrópolis futurista llena de crimen.',86),
  (3004,'God of War III','La guerra contra el Olimpo llega a su clímax cuando Kratos busca venganza.',92),
  (3005,'Doom Eternal','El infierno se desata en la Tierra; enfrenta hordas de demonios con pura acción.',89),
  (3006,'Celeste','Una joven enfrenta su ansiedad mientras escala una montaña mágica.',94),
  (3007,'Donkey Kong Country','Clásico de plataformas con aventuras en la jungla y enemigos coloridos.',88),
  (3008,'God of War: Ascension','Precuela de la saga con los orígenes de Kratos tras la guerra con los juramentos.',84),
  (3009,'Crash Bandicoot N. Sane Trilogy','Remaster del clásico de plataformas con más de 100 niveles.',90),
  (3010,'Dead Cells','Combates frenéticos estilo roguelike con armas y mutaciones.',87);

insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values
	(1,'PlayStation 5',3001),
  (2,'Xbox Series X',3002),
  (3,'Nintendo Switch',3003),
  (4,'Steam',3004),
  (5,'Epic Games Store',3005),
  (6,'PlayStation 4',3006),
  (7,'Xbox One',3007),
  (8,'Nintendo eShop',3008),
  (9,'GeForce NOW',3009),
  (10,'EA App',3010);