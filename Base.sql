CREATE DATABASE Tranzit;
USE Tranzit;
CREATE TABLE horarios (
  dia VARCHAR(255) NOT NULL,
  hora TIME PRIMARY KEY);
  
CREATE TABLE conductor (
  nom VARCHAR(255) PRIMARY KEY ,
  pla INT(11) NULL DEFAULT NULL,
  hora TIME NOT NULL,
FOREIGN KEY (hora) REFERENCES horarios (hora)
);
CREATE TABLE rutas (
  nop INT(11) NOT NULL PRIMARY KEY ,
  nomrut VARCHAR(255) NOT NULL)  ;
    INSERT INTO rutas (nop,nomrut) values ("3","de santa c a los santos");
    INSERT INTO rutas (nop,nomrut) values ("4","de los santos a las rosas");
    INSERT INTO rutas (nop,nomrut) values ("5","de los ramos a isabel");
    INSERT INTO rutas (nop,nomrut) values ("6","de las rosas a los ramos");
    INSERT INTO rutas (nop,nomrut) values ("7","de los ramos a los santos");
    INSERT INTO rutas (nop,nomrut) values ("8","de isabel a los santos");
    INSERT INTO rutas (nop,nomrut) values ("9","de santa c a los ramos");
    INSERT INTO rutas (nop,nomrut) values ("10","de santa c a los rosas");
    INSERT INTO rutas (nop,nomrut) values ("11","de los santos a los santa c");
    INSERT INTO rutas (nop,nomrut) values ("14","de los ramos a isabel");
    INSERT INTO rutas (nop,nomrut) values ("19","de isabel a santa c");
    INSERT INTO horarios (dia,hora) values ("lunes","05:00");
    INSERT INTO horarios (dia,hora) values ("lunes","00:00");
    INSERT INTO horarios (dia,hora) values ("martes","08:00");
    INSERT INTO horarios (dia,hora) values ("martes","20:00");
    INSERT INTO horarios (dia,hora) values ("miercoles","06:00");
	INSERT INTO horarios (dia,hora) values ("miercoles","21:00");
    INSERT INTO horarios (dia,hora) values ("jueves","07:00");
    INSERT INTO horarios (dia,hora) values ("jueves","19:00");
    INSERT INTO horarios (dia,hora) values ("viernes","23:00");
    INSERT INTO horarios (dia,hora) values ("viernes","04:00");
    INSERT INTO conductor (nom,pla,hora) values ("juan","931","05:00");
    INSERT INTO conductor (nom,pla,hora) values ("joan","932","00:00");
    INSERT INTO conductor (nom,pla,hora) values ("john","933","08:00");
    INSERT INTO conductor (nom,pla,hora) values ("jonatan","934","20:00");
    INSERT INTO conductor (nom,pla,hora) values ("julian","935","06:00");
    INSERT INTO conductor (nom,pla,hora) values ("javier","936","21:00");
    INSERT INTO conductor (nom,pla,hora) values ("valeria","937","07:00");
    INSERT INTO conductor (nom,pla,hora) values ("carlos","938","19:00");
    INSERT INTO conductor (nom,pla,hora) values ("daniel","939","04:00");
    INSERT INTO conductor (nom,pla,hora) values ("gabriel","930","23:00");
    CREATE TABLE bus (
  pla INT(11) PRIMARY KEY,
  es ENUM('sí', 'no') NOT NULL,
  nom VARCHAR(255) NOT NULL,
  nop INT(11) NOT NULL,
  hora TIME NOT NULL,
FOREIGN KEY (nop) REFERENCES rutas (nop),
FOREIGN KEY (nom) REFERENCES conductor (nom),
FOREIGN KEY (hora) REFERENCES horarios (hora));
	INSERT INTO bus (pla,es,nom,nop,hora) values ("931","sí","juan","3","05:00");
    INSERT INTO bus (pla,es,nom,nop,hora) values ("932","sí","joan","4","00:00");
    INSERT INTO bus (pla,es,nom,nop,hora) values ("933","sí","john","5","08:00");
    INSERT INTO bus (pla,es,nom,nop,hora) values ("934","sí","jonatan","6","20:00");
    INSERT INTO bus (pla,es,nom,nop,hora) values ("935","sí","julian","7","04:00");
    INSERT INTO bus (pla,es,nom,nop,hora) values ("936","sí","javier","8","23:00");
    INSERT INTO bus (pla,es,nom,nop,hora) values ("937","sí","valeria","9","07:00");
    INSERT INTO bus (pla,es,nom,nop,hora) values ("938","sí","carlos","10","19:00");
    INSERT INTO bus (pla,es,nom,nop,hora) values ("939","sí","daniel","11","04:00");
    INSERT INTO bus (pla,es,nom,nop,hora) values ("930","sí","gabriel","14","23:00");
    select nop as noparadas,nomrut as nombre from rutas;
    select dia as dia_de_la_semana,hora as hora_militar from horarios;
    select nom as nombre,pla as placa,hora as servicio from conductor;
	select nom as nombre,pla as placa,hora as servicio,es as estado,nop as noparadas from bus;
    select * from bus limit 5;
    select * from rutas limit 5; 
    select * from conductor limit 5; 
    select * from horarios limit 5; 
    select count(*) from bus where pla="932" or pla="934" or pla="936" or pla="938" or pla="930";
    select count(*) from conductor where pla="932" or pla="934" or pla="936" or pla="938" or pla="930";
    select count(*) from horarios where hora="04:00" or hora="08:00" or hora="20:00" ;
    select count(*) from rutas where nop="4" or nop="6" or nop="8" or nop="10" or nop="14";
    select * from bus inner join rutas;
    select * from conductor inner join rutas;
    select * from horarios inner join conductor;
    select * from rutas inner join bus;
    