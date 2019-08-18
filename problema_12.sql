-- 1
drop table if exists medicamentos;

-- 2
create table medicamentos(
  codigo integer auto_increment,
  nombre varchar(20),
  laboratorio varchar(20),
  precio float,
  cantidad integer,
  primary key (codigo)
);

-- 3
describe medicamentos;

-- 4
insert into medicamentos (nombre, laboratorio,precio,cantidad)
   values('Sertal','Roche',5.2,100);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Buscapina','Roche',4.10,200);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxidal 500','Bayer',15.60,100);

-- 5
select * from medicamentos;

-- 6
insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
   values(1,'Aspirina','Roche',5.2,100);

-- 7
insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
  values(12,'Paracetamol 500','Bago',1.90,200);

-- 8
insert into medicamentos (nombre, laboratorio,precio,cantidad)
 values('Bayaspirina','Bayer',2.10,150);
