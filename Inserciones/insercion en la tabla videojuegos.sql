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
values(1002,'Red Dead Redemption 2','Western de mundo abierto donde sigues la historia de Arthur Morgan y su banda de forajidos',96);

insert into videojuegos
values(1003,'The Witcher 3: Wild Hunt','Juego de rol con narrativa profunda, donde Geralt de Rivia busca a su hija adoptiva Ciri',93);

insert into videojuegos
values(1004,'Elden Ring','RPG de acción en un mundo de fantasía creado por FromSoftware con lore de George R. R. Martin',95);

insert into videojuegos
values(1005,'God of War (2018)','Kratos y su hijo Atreus viajan por la mitología nórdica enfrentando dioses y monstruos',94);

select * from videojuegos