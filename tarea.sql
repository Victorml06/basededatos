/*1*/
SELECT idVisita, ip, fechaHora, jesuita.nombre
FROM visita INNER JOIN jesuita
				ON visita.idJesuita=jesuita.idJesuita;


/*2*/
SELECT idVisita, visita.ip, fechaHora, jesuita.nombre, lugar.lugar
FROM (visita INNER JOIN jesuita
				ON visita.idJesuita=jesuita.idJesuita)
				INNER JOIN lugar
				ON visita.ip=lugar.ip;



/*3*/

INSERT INTO jesuita (codigo, nombre, nombreAlumno, firma, firmaIngles)
VALUES
('4321', 'Pedro Diaz', 'Francisco Javier', 'FirmaGenerica2', 'GenericSignature3');




/*4*/

INSERT INTO lugar (ip, nombre_maquina, lugar)  
VALUES  
('192.168.1.30', 'WIN-3', 'Badajoz'),  
('192.168.1.40', 'WIN-4', 'Caceres');

/*5*/

SELECT jesuita.idJesuita, jesuita.nombre, lugar.lugar  
FROM jesuita
	LEFT JOIN visita 
	ON jesuita.idJesuita = visita.idJesuita  
	LEFT JOIN lugar
	ON visita.ip = lugar.ip;


/*5b*/

SELECT idVisita,nombre,lugar
FROM visita 
	LEFT  JOIN lugar 
	ON visita.ip=lugar.ip
	RIGHT JOIN jesuita 
	ON visita.idJesuita=jesuita.idJesuita;
	
/*6*/

SELECT nombre, lugar
FROM visita 
	RIGHT  JOIN lugar 
	ON visita.ip=lugar.ip
	LEFT JOIN jesuita 
	ON visita.idJesuita=jesuita.idJesuita;

/*7*/

SELECT nombre, lugar
FROM visita 
	RIGHT  JOIN lugar 
	ON visita.ip=lugar.ip
	LEFT JOIN jesuita 
	ON visita.idJesuita=jesuita.idJesuita
	where nombre is null;

/*8*/

--DUDAS

/*9*/

SELECT distinct nombre
        FROM visita INNER JOIN jesuita ON visita.idJesuita=jesuita.idJesuita;

/*10*/
SELECT Distinct lugar.ip,lugar
        FROM visita INNER JOIN lugar on visita.ip=lugar.ip;Piensa otra consulta diferente con DISTINCT (con la misma base de datos).

/*todos los operadores*/

SELECT nombre,lugar
FROM visita INNER JOIN lugar on visita.ip=lugar.ip
    INNER JOIN jesuita ON visita.idJesuita=jesuita.idJesuita
    WHERE jesuita.idJesuita in (1,2);

SELECT *
    FROM visita
        WHERE fechaHora BETWEEN '2025-31-03 08:30:00' AND '2025-31-03 9:00:00';
