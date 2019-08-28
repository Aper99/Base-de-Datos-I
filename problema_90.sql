-- 1
drop table if exists inscriptos;
drop table if exists socios;
drop table if exists profesores;
drop table if exists cursos;

CREATE TABLE socios (
    documento CHAR(8) NOT NULL,
    nombre VARCHAR(40),
    domicilio VARCHAR(30),
    PRIMARY KEY (documento)
);

CREATE TABLE profesores (
    documento CHAR(8) NOT NULL,
    nombre VARCHAR(40),
    domicilio VARCHAR(30),
    PRIMARY KEY (documento)
);

CREATE TABLE cursos (
    numero INTEGER AUTO_INCREMENT,
    deporte VARCHAR(20),
    dia VARCHAR(15),
    documentoprofesor CHAR(8),
    PRIMARY KEY (numero)
);

CREATE TABLE inscriptos (
    documentosocio CHAR(8) NOT NULL,
    numero INTEGER NOT NULL,
    matricula CHAR(1),
    PRIMARY KEY (documentosocio , numero)
);


-- 2
insert into socios values('30000000','Fabian Fuentes','Caseros 987');
insert into socios values('31111111','Gaston Garcia','Guemes 65');
insert into socios values('32222222','Hector Huerta','Sucre 534');
insert into socios values('33333333','Ines Irala','Bulnes 345');

insert into profesores values('22222222','Ana Acosta','Avellaneda 231');
insert into profesores values('23333333','Carlos Caseres','Colon 245');
insert into profesores values('24444444','Daniel Duarte','Sarmiento 987');
insert into profesores values('25555555','Esteban Lopez','Sucre 1204');

insert into cursos(deporte,dia,documentoprofesor)
 values('tenis','lunes','22222222');
insert into cursos(deporte,dia,documentoprofesor)
 values('tenis','martes','22222222');
insert into cursos(deporte,dia,documentoprofesor)
 values('natacion','miercoles','22222222');
insert into cursos(deporte,dia,documentoprofesor)
 values('natacion','jueves','23333333');
insert into cursos(deporte,dia,documentoprofesor)
 values('natacion','viernes','23333333');
insert into cursos(deporte,dia,documentoprofesor)
 values('futbol','sabado','24444444');
insert into cursos(deporte,dia,documentoprofesor)
 values('futbol','lunes','24444444');
insert into cursos(deporte,dia,documentoprofesor)
 values('basquet','martes','24444444');

insert into inscriptos values('30000000',1,'s');
insert into inscriptos values('30000000',3,'n');
insert into inscriptos values('30000000',6,null);
insert into inscriptos values('31111111',1,'s');
insert into inscriptos values('31111111',4,'s');
insert into inscriptos values('32222222',8,'s');

-- 3
drop table if exists vista_club;

-- 4
CREATE VIEW vista_club AS
    SELECT
        s.nombre AS socio,
        s.documento AS docsocio,
        s.domicilio AS domsocio,
        c.deporte AS deporte,
        dia,
        p.nombre AS profesor,
        matricula
    FROM
        socios AS s
            JOIN
        inscriptos AS i ON s.documento = i.documentosocio
            JOIN
        cursos AS c ON i.numero = c.numero
            JOIN
        profesores AS p ON c.documentoprofesor = p.documento;

-- 5
SELECT
    *
FROM
    vista_club;

-- 6
SELECT
    deporte, dia, COUNT(socio) AS cantidad
FROM
    vista_club
GROUP BY deporte , dia
ORDER BY cantidad;

-- 7
SELECT
    socio, docsocio
FROM
    vista_club
WHERE
    matricula <> 's';


-- 8
SELECT DISTINCT
    profesor, dia
FROM
    vista_club;

-- 9
SELECT
    socio
FROM
    vista_club
WHERE
    deporte = 'tenis' AND dia = 'lunes';

-- 10
drop table if exists vista_inscriptos;

CREATE VIEW vista_inscriptos AS
    SELECT
        deporte,
        dia,
        (SELECT
                COUNT(*)
            FROM
                inscriptos AS i
            WHERE
                i.numero = c.numero) AS cantidad
    FROM
        cursos AS c;

-- 11
SELECT
    *
FROM
    vista_inscriptos;
