-- 1
drop table if exists empleados;

create table empleados(
 documento char(8),
 nombre varchar(20),
 apellido varchar(20),
 sueldo decimal(6,2),
 cantidadhijos int,
 seccion varchar(20),
 primary key(documento)
);

-- 2
insert into empleados values('22222222','Juan','Perez',300,2,'Contaduria');
 insert into empleados values('22333333','Luis','Lopez',700,0,'Contaduria');
 insert into empleados values ('22444444','Marta','Perez',500,1,'Sistemas');
 insert into empleados values('22555555','Susana','Garcia',400,2,'Secretaria');
 insert into empleados values('22666666','Jose Maria','Morales',1200,3,'Secretaria');

-- 3
drop procedure if exists pa_seccion;

-- 4
delimiter //
 create procedure pa_seccion(
   in p_seccion varchar(20),
   out promedio float,
   out mayor float)
 begin
   select avg(sueldo) into promedio
     from empleados
     where seccion=p_seccion;
   select max(sueldo) into mayor
   from empleados
    where seccion=p_seccion;
  end //
 delimiter ;    

 -- 5
 call pa_seccion('Contaduria', @p, @m);
 select @p,@m;

call pa_seccion('Secretaria', @p, @m);
select @p,@m;
