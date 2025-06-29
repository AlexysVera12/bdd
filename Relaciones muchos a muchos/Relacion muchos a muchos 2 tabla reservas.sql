create table habitaciones(
	habitacion_numero int,
	precio_por_noche decimal not null,
	piso int not null,
	max_personas int,
	constraint habitaciones_pk primary key(habitacion_numero)
)

create table huespedes(
	id int,
	nombres varchar(45) not null,
	apellidos varchar(45) not null,
	telefono char(10),
	correo varchar(45),
	direccion varchar(45),
	ciudad varchar(45),
	pais varchar(45),
	constraint huespedes_pk primary key(id)
)

create table reservas(
	inicio_fecha date,
	fin_fecha date,
	habitacion int not null,
	huesped_id int not null,
	constraint habitacion_fk foreign key(habitacion_id) references habitaciones(habitacion_numero),
	constraint huespedes_fk foreign key(huesped_id) references huespedes(id),
	constraint reservas_pk primary key(habitacion_id,huesped_id)	
)

--consulta 1
select ha.habitacion_numero, hu.nombres,hu.apellidos from
habitaciones ha, huespedes hu, reservas re
where
ha.habitacion_numero = re.habitacion and
hu.id = re.huesped_id

--subconsulta 1
select nombres,apellidos from huespedes
where 
id in (select huesped_id from reservas where habitacion = 2)

--agregacion 1
select ha.habitacion_numero, count(re.huesped_id) from
habitaciones ha, reservas re
where 
ha.habitacion_numero = re.habitacion
group by ha.habitacion_numero

--consulta 2
select ha.habitacion_numero,ha.piso,hu.nombres,hu.apellidos from
habitaciones ha, huespedes hu, reservas re
where
ha.habitacion_numero = re.habitacion and
hu.id = re.huesped_id and
ha.piso = 4

--subconsulta 2
select nombres, apellidos from huespedes
where
id in (select huesped_id from reservas where habitacion = 3)

--agregacion 2
select ha.habitacion_numero, avg(re.huesped_id) from
habitaciones ha, reservas re
where
ha.habitacion_numero = re.habitacion
group by ha.habitacion_numero

--consulta 3
select ha.habitacion_numero,hu.nombres,hu.apellidos from
habitaciones ha,huespedes hu,reservas re
where
ha.habitacion_numero = re.habitacion and
hu.id=re.huesped_id

--subconsulta 3
select nombres,apellidos from huespedes 
where
id in (select huesped_id from reservas where habitacion = 4)

--agregacion 3
select ha.habitacion_numero, sum(ha.precio_por_noche) from
habitaciones ha, reservas re
where
ha.habitacion_numero = re.habitacion
group by ha.habitacion_numero