-- 1
drop table if exists agenda;

-- 2
create table agenda (
	nombre varchar(30),
	domicilio varchar(30),
	telefono varchar(11)
	);
	
-- 3
show tables;

-- 4
describe agenda;

-- 5
insert into agenda (nombre, domicilio, telefono) values ('Alberto Mores', 'Colon 123', '4234567');
insert into agenda (nombre, domicilio, telefono) values('Juan Torres', 'Avellaneda 135', '4458787');

-- 6
select * from agenda;

-- 7
drop table if exists agenda;

-- 8
drop table agenda;