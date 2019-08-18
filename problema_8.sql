-- 1
drop table if exists articulos;

-- 2
create table articulos(
  codigo integer,
  nombre varchar(20),
  descripcion varchar (30),
  precio float,
  cantidad integer
);

-- 3
describe articulos;

-- 4
insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (1,'impresora','Epson Stylus C45',400.80,20);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (2,'impresora','Epson Stylus C85',500,30);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (3,'monitor','Samsung 14',800,10);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (4,'teclado','ingles Biswal',100,50);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (5,'teclado','español Biswal',90,50);

-- 5
select * from articulos;

-- 6
select * from articulos where nombre = 'impresora';

-- 7
select * from articulos where precio >= 500;

-- 8
select * from articulos where cantidad < 30;

-- 9
select nombre , descripcion from articulos where precio <> 100;
