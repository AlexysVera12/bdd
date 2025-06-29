
create table ciudad(
	id int,
	nombre varchar(45) not null,
	constraint ciudad_pk primary key(id)
)

create table municipio(
	id int,
	nombre varchar(45),
	ciudad_id int,
	constraint municipio_pk primary key(id),
	constraint ciudad_fk foreign key(ciudad_id) references ciudad(id)
)

create table proyecto(
	id int,
	proyecto varchar(50) not null,
	monto money not null,
	fecha_inicio date,
	fecha_entrega date,
	constraint proyecto_pk primary key(id)
)

create table proyecto_municipio(
	municipio_id int not null,
	proyecto_id int not null,
	constraint municipio_fk foreign key(municipio_id) references municipio(id),
	constraint proyecto_fk foreign key(proyecto_id) references proyecto(id),
	constraint proyecto_municipio_pk primary key(municipio_id,proyecto_id)
)

--consulta 1 
select mu.nombre,pr.proyecto from 
municipio mu, proyecto pr, proyecto_municipio pr_mu
where
mu.id = pr_mu.municipio_id and
pr.id = pr_mu.proyecto_id

--subconsulta 1
select proyecto from proyecto
where
id in (select proyecto_id from proyecto_municipio where municipio_id = 1)

--agregacion 1
select mu.nombre, count(pr_mu.proyecto_id) from
municipio mu,proyecto_municipio pr_mu
where
mu.id = pr_mu.municipio_id
group by mu.nombre

--consulta 2
select mu.nombre,pr.proyecto from 
municipio mu, proyecto pr, proyecto_municipio pr_mu
where 
mu.id = pr_mu.municipio_id and
pr.id = pr_mu.proyecto_id and
mu.nombre like '%GAD%' 

--agregacion 2
select mu.nombre, min(pr_mu.proyecto_id) from
municipio mu, proyecto_municipio pr_mu
where
mu.id = pr_mu.municipio_id
group by mu.nombre

--consulta 3
select mu.nombre, ci.nombre from
municipio mu, ciudad ci
where
mu.id = ci.id

--subconsulta 3
select proyecto from proyecto
where
id in (select proyecto_id from proyecto_municipio where municipio_id = 3)

--agregacion 3
select mu.nombre, max(pr_mu.proyecto_id) from
municipio mu, proyecto_municipio pr_mu
where
mu.id = pr_mu.municipio_id
group by mu.nombre
