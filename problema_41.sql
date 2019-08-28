-- 1
drop table if exists alumnos;

CREATE TABLE alumnos (
    documento CHAR(8),
    nombre VARCHAR(30),
    nota DECIMAL(4 , 2 ),
    PRIMARY KEY (documento)
);

-- 2
insert into alumnos values('30111111','Ana Algarbe',5.1);
insert into alumnos values('30222222','Bernardo Bustamante',3.2);
insert into alumnos values('30333333','Carolina Conte',4.5);
insert into alumnos values('30444444','Diana Dominguez',9.7);
insert into alumnos values('30555555','Fabian Fuentes',8.5);
insert into alumnos values('30666666','Gaston Gonzalez',9.70);

-- 3
drop view if exists vista_nota_alumnos;

CREATE VIEW vista_nota_alumnos AS
    SELECT
        nombre, nota
    FROM
        alumnos;

-- 4
SELECT
    *
FROM
    vista_nota_alumnos;

-- 5
CREATE VIEW vista_nota_alumnos_aprobados AS
    SELECT
        nombre, nota
    FROM
        alumnos
    WHERE
        nota >= 7;


-- 6

SELECT
    *
FROM
    vista_nota_alumnos_aprobados;
