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

