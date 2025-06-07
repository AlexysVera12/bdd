drop table videojuegos;
create table videojuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key(codigo)
);

insert into videojuegos
values(1001,'The Legend of Zelda: Breath of the Wild','Aventura en mundo abierto donde Link explora Hyrule para derrotar a Ganon y salvar a la princesa Zelda',97);

insert into videojuegos
values(1002,'Red Dead Redemption 2','Western de mundo abierto donde sigues la historia de Arthur Morgan y su banda de forajidos',9);

insert into videojuegos
values(1003,'The Witcher 3: Wild Hunt','Juego de rol con narrativa profunda, donde Geralt de Rivia busca a su hija adoptiva Ciri',3);

insert into videojuegos
values(1004,'Elden Ring','RPG de acción en un mundo de fantasía creado por FromSoftware con lore de George R. R. Martin',9);

insert into videojuegos
values(1005,'God of War (2018)','Kratos y su hijo Atreus viajan por la mitología nórdica enfrentando dioses y monstruos',94);

insert into videojuegos(codigo,nombre,valoracion)
values(1006,'Grand Theft Auto V',96);

insert into videojuegos(codigo,nombre,valoracion)
values(1007,'Super Mario Odyssey',97);

insert into videojuegos(codigo,nombre,valoracion)
values(1008,'Minecraft',93);

select * from videojuegos;
select * from videojuegos where nombre like 'C%';
select * from videojuegos where valoracion between 9 and 10;
select * from videojuegos where descripcion is null;

update videojuegos set descripcion = 'Mejor puntuado' where valoracion > 9;

delete from videojuegos where valoracion < 7