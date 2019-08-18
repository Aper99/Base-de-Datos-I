-- 1
drop table if exists pedidos;

-- 2
create table pedidos(
  numero_pedido tinyint unsigned auto_increment,
  nombre char(8),
  tipo varchar(15),
  precio decimal(2.2) unsigned,
  cantidad tinyint unsigned,
  domicilio varchar(20),
  primary key (numero_pedido)
);
