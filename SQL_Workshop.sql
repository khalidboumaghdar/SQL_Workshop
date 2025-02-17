create database Compagnie_aerienne;

use Compagnie_aerienne;
create table Avion(
Avion_ID  INT  PRIMARY KEY, 
Avion_Nom  VARCHAR(255) NOT NULL,
Avion_Capacite int NOT NULL,
Avion_Localite VARCHAR(255) NOT NULL
);
create table Pilote(
Pilote_ID INT  key,
Pilote_Nom varchar(255) not null,
Pilote_Adresse varchar(255) not null
);
create table Vol(
Vol_ID  INT  primary key,
Pilote_ID int,
FOREIGN KEY (Pilote_ID) REFERENCES Pilote(Pilote_ID),
Avion_ID int,
foreign key(Avion_ID) references Avion(Avion_ID),
Ville_Depart varchar(255) not null,
Ville_Arrive varchar(255) not null,
Heur_Depart  TIME,
Heur_Arrive TIME


);
/* 1) */
insert into Avion value(100, 'AIRBUS', 300, 'RABAT');
insert into Avion value(101,'B737',250,'CASA');
insert into Avion value(102,'B737',150,'RABAT');
/* 2) */
select * from Avion;

/* 3*/
SELECT * FROM Avion ORDER BY Avion_Nom asc;
/*4*/
select Avion_Nom,Avion_Capacite from Avion;
/*5*/
select DISTINCT  Avion_Localite from Avion;
/* 6 */
select * from Avion where Avion_Localite='RABAT';
select * from Avion where Avion_Localite='CASA';
/* 7 */
update Avion set Avion_Capacite=220 where Avion_ID=101  ;
/* 8 */
SET SQL_SAFE_UPDATES = 0;
DELETE FROM Avion WHERE Avion_Capacite < 200;
SET SQL_SAFE_UPDATES = 1;
/* 9 */
select max(Avion_Capacite) from Avion ;
select min(Avion_Capacite) from Avion ;
select AVG(Avion_Capacite) from Avion ;
/* 10 */
SELECT * FROM Avion WHERE Avion_Capacite = (SELECT MIN(Avion_Capacite) FROM Avion);
/*11*/
SELECT * FROM Avion WHERE Avion_Capacite > (SELECT AVG(Avion_Capacite) FROM Avion);
/* 12 */
select * from Avion;
select * from Vol;
select * from Pilote;
insert into Pilote value(100,'khalid','fes');
insert into Vol value(103,100,100,'RABAT','Paris','03:04:06','03:04:06');
select Pilote.Pilote_Nom,Pilote.Pilote_Adresse  from Pilote INNER JOIN Vol ON Vol.Pilote_ID = Pilote.Pilote_ID;








