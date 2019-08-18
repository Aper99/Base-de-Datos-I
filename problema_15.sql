-- 1
drop table if exists peliculas;

-- 2 y 3
create table peliculas(
  codigo integer auto_increment,
  titulo varchar(40) not null,
  actor varchar(20),
  duracion integer unsigned,
  primary key(codigo)
);

-- 4
describe peliculas;
