-- 1
drop table if exists libros;

-- 2
create table libros(
  codigo integer,
  titulo varchar(20),
  autor varchar(30),
  editorial varchar(15),
  primary key(codigo)
);

-- 3
describe libros;

-- 4
insert into libros(codigo,titulo,autor,editorial)
  values(1,'El aleph','Borges','Planeta');
insert into libros(codigo,titulo,autor,editorial)
  values(2,'Martin Fierro','Jose Hernandez','Emece');
insert into libros(codigo,titulo,autor,editorial)
  values(3,'Aprenda PHP','Mario Molina','Emece');
insert into libros(codigo,titulo,autor,editorial)
  values(4,'Cervantes y el quijote','Borges','Paidos');
insert into libros(codigo,titulo,autor,editorial)
  values(5,'Matematica estas ahi', 'Paenza', 'Paidos');

-- 5
select * from libros;

-- 6
insert into libros(codigo,titulo,autor,editorial)
  values(6,'El aleph','Borges','Planeta');

-- 7
insert into libros(codigo,titulo,autor,editorial)
  values(7,'Matematica estas ahi', 'Paenza', 'Paidos');

-- 8
insert into libros(codigo,titulo,autor,editorial)
  values(2,'Martin Fierro','Jose Hernandez','Emece');
