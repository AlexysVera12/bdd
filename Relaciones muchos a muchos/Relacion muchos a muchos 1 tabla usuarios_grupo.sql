
create table usuarios(
	id int ,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	fecha_nacimiento date,
	constraint usuarios_pk primary key(id)
)

create table grupo(
	id int,
	nombre varchar(25) not null,
	descripcion varchar(75) not null,
	fecha_creacion date,
	constraint grupo_pk primary key(id)
)

create table usuario_grupo(
	us_id int not null,
	gr_id int not null,
	constraint usuario_fk foreign key(us_id) references usuarios(id),
	constraint grupo_fk foreign key(gr_id) references grupo(id),
	constraint usuario_grupo_pk primary key(us_id,gr_id)
)
--consulta 1
select us.nombre,gr.nombre from 
usuarios us, grupo gr, usuario_grupo us_gr
where 
us.id = us_gr.us_id and
gr.id = us_gr.gr_id

--subconsulta 1
select nombre from usuarios
where
id in (select us_id from usuario_grupo where gr_id = 1)

--agregacion 1
select gr.nombre, count(us_gr.us_id) from
grupo gr,usuario_grupo us_gr
where
gr.id = us_gr.gr_id
group by gr.nombre

--consulta 2
select us.nombre,gr.nombre from
usuarios us,grupo gr,usuario_grupo us_gr
where
us.id = us_gr.us_id and
gr.id = us_gr.gr_id and
gr.nombre like '%intensivo%'

--subconsulta 2
select nombre from usuarios
where
id in (select us_id from usuario_grupo us_gr where us_gr.gr_id = 2)

--agregacion 2
select gr.nombre, max(us_gr.us_id),min(us_gr.us_id) from
grupo gr, usuario_grupo us_gr
where
gr.id = us_gr.gr_id
group by gr.nombre

--consulta 3
select us.nombre,gr.fecha_creacion from
usuarios us, grupo gr, usuario_grupo us_gr
where
us.id = us_gr.us_id and
gr.id = us_gr.gr_id and
gr.fecha_creacion between '2020-03-08' and '2022-03-08'

--subconsulta 3
select nombre from usuarios
where 
id in (select us_id from usuario_grupo where gr_id = 3)

--agregacion 3
select gr.descripcion, count(us_gr.us_id) from
grupo gr,usuario_grupo us_gr
where
gr.id = us_gr.gr_id and
gr.descripcion like '%matutino%'
group by gr.descripcion
