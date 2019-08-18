-- 1
drop table if exists medicamentos;

-- 2
create table medicamentos(
  codigo integer auto_increment,
  nombre varchar(20) not null,
  laboratorio varchar(20),
  precio float,
  cantidad integer not null,
  primary key(codigo)
);

-- 3
describe medicamentos;

-- 4
insert into medicamentos (nombre,laboratorio,precio,cantidad)
 values('Sertal gotas','Roche',5.2,100);
insert into medicamentos (nombre,laboratorio,precio,cantidad)
 values('Sertal compuesto','Roche',7.1,150);
insert into medicamentos (nombre,laboratorio,precio,cantidad)
 values('Buscapina','Roche',null,200);
insert into medicamentos (nombre,laboratorio,precio,cantidad)
 values('Amoxidal 500','Bayer',15.60,0);
insert into medicamentos (nombre,laboratorio,precio,cantidad)
 values('Amoxidal jarabe','Bayer',25,120);
insert into medicamentos (nombre,laboratorio,precio,cantidad)
 values('Amoxinil',null,25,120);
insert into medicamentos (nombre, laboratorio,precio,cantidad)
 values('Bayaspirina','',0,150);

-- 5
select * from medicamentos;

-- 6
select * from medicamentos where laboratorio is null;
select * from medicamentos where laboratorio = '';

-- 7
select * from medicamentos where precio is null;
select * from medicamentos where precio = 0;

-- 8
insert into medicamentos (nombre, laboratorio,precio,cantidad)
 values(null,'Bayer',10.20,100);

-- 9
insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
 values(null,'Benadryl comprimidos','Bayer',10.20,null);

-- 10
select * from medicamentos where laboratorio <>'';
select * from medicamentos where laboratorio is not null;
