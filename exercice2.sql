CREATE TABLE IF NOT EXISTS centreFormation.Inscription (
codeSess INT NOT NULL,
numCINEtu VARCHAR(10) NOT NULL,
typeCours VARCHAR(45),
PRIMARY KEY (codeSess, numCINEtu),
INDEX fk_SESSION_has_ETUDIANT_ETUDIANT1_idx (numCINEtu ASC) VISIBLE,
INDEX fk_SESSION_has_ETUDIANT_SESSION_idx (codeSess ASC) VISIBLE,
CONSTRAINT fk_SESSION_has_ETUDIANT_SESSION
FOREIGN KEY (codeSess)
REFERENCES centreFormation.SESSION (codeSess)
ON DELETE NO ACTION
ON UPDATE NO ACTION,
CONSTRAINT fk_SESSION_has_ETUDIANT_ETUDIANT1
FOREIGN KEY (numCINEtu)
REFERENCES centreFormation.ETUDIANT (numCINEtu)
ON DELETE NO ACTION
ON UPDATE NO ACTION)
ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS centreFormation.Catalogue (
codeSpec INT NOT NULL,
codeForm INT NOT NULL,
PRIMARY KEY (codeSpec, codeForm),
INDEX fk_SPECIALITE_has_Formation_Formation1_idx (codeForm ASC) VISIBLE,
INDEX fk_SPECIALITE_has_Formation_SPECIALITE1_idx (codeSpec ASC) VISIBLE,
CONSTRAINT fk_SPECIALITE_has_Formation_SPECIALITE1
FOREIGN KEY (codeSpec)
REFERENCES centreFormation.SPECIALITE (codeSpec)
ON DELETE NO ACTION
ON UPDATE NO ACTION,
CONSTRAINT fk_SPECIALITE_has_Formation_Formation1
FOREIGN KEY (codeForm)
REFERENCES centreFormation.Formation (codeForm)
ON DELETE NO ACTION
ON UPDATE NO ACTION)
ENGINE = InnoDB;
MODIFY typeCours VARCHAR(45) NOT NULL;
ADD CONSTRAINT CHK_dateDebut_Fin CHECK (dateFin>= dateDebut);
ADD ACTIVE TINYINT;
NSERT INTO ETUDIANT (numCINEtu,nomEtu,prenomEtu,dateNaissance,adressEtu,villeEtu,niveauEtu)
values
('AB234567','Alami','Ahmad','1986-01-01','Rue du port, 13','Tanger','bac'),
('G5346789','Toumi','Aicha','2000-12-03','N12 immeuble Jaouhara','Casablanca','Master'),
('C0987265','Souni','Sanaa','1998-04-30','Place du peuple n 2','Tanger','Niveau bac'),
('D2356903','Idrissi Alami','Mohammed','1996-05-05','Lotissement najah, rue n 12 immeuble 3','Rabat','Bac+ 4'),
('Y1234987','Ouled thami','Ali','1979-12-04','La ville haute, rue chouhada n 6','Tanger','Bachelor'),
('J3578902','Ben Omar','Abd Allah','1990-06-25','Villa Amina n12 bir rami','Kenitra','Phd'),
('F9827363','Boudiaf','Fatima Zohra','1997-01-10','Immeuble iftikhar, n 13 ettakaddoum','Rabat','Bac + 2’)
Insert into FORMATION (codeForm,titreForm,dureeForm,prixForm)
values
(11,'Programming Java',12,3600),
(12,'web developpment',14,4200),
(13,'Anglais technique',15,3750),
(14,'Communication',10,2500),
(15,'Base de données Oracle',20,6000),
(16,'Soft skills',12,3000);
Insert into session (codesess,nomsess,datedebut,datefin)
values
(1101,'Session 1101','2022-01-02','2022-01-14',11),
(1102,'Session 1102','2022-02-03','2022-02-15',11),
(1201,'Session 1201','2022-03-04','2022-03-18',12),
(1202,'Session 1202','2022-04-05','2022-04-19',12),
(1301,'Session 1301','2022-01-06','2022-01-21',13),
(1302,'Session 1302','2022-05-07','2022-05-22',13),
(1303,'Session 1303','2022-06-08','2022-06-23',13),
(1401,'Session 1401','2022-09-01','2022-09-11',14),
(1402,'Session 1402','2022-08-08','2022-08-18',14),
(1501,'Session 1501','2022-11-11','2022-12-01',15),
(1502,'Session 1502','2022-09-12','2022-10-02',15),
(1601,'Session 1601','2022-09-13','2022-09-25',16),
(1602,'Session 1602','2022-10-14','2022-10-26',16),
(1104,'Session 1104','2022-10-15','2022-10-27',11),
(1203,'Session 1203','2022-11-16','2022-11-30',12),
(1204,'Session 1204','2022-12-17','2022-12-31',12);
Solution Exercice 1 : « Centre de Formation »
INSERT INTO SPECIALITE (codeSpec,nomSpec,descSpec,Active)
VALUES
(101,'GL', 'Genie logiciel et develloppement',1),
(102,'Data', 'Data engineering',1),
(103,'Langues', 'Anglais Français',1),
(104,'Communication','Communication',1),
(105,'Securite','Reseaux et securite',0);
nsert into catalogue (CodeSpec, codeForm)
Values
(101,11),
(101,12),
(102,15),
(101,15),
(103,13),
(104,13),
(104,14),
(104,16);
Insert into INSCRIPTION (codeSess,numCINEtu,TypeCours)
Values
(1101,'AB234567','Distanciel'),
(1101,'G5346789','Distanciel'),
(1101,'C0987265','Distanciel'),
(1101,'D2356903','Distanciel'),
(1101,'Y1234987','Distanciel'),
(1101,'J3578902','Distanciel'),
(1101,'F9827363','Distanciel'),
CREATE TABLE IF NOT EXISTS centreFormation.Inscription (
codeSess INT NOT NULL,
numCINEtu VARCHAR(10) NOT NULL,
typeCours VARCHAR(45),
PRIMARY KEY (codeSess, numCINEtu),
INDEX fk_SESSION_has_ETUDIANT_ETUDIANT1_idx (numCINEtu ASC) VISIBLE,
INDEX fk_SESSION_has_ETUDIANT_SESSION_idx (codeSess ASC) VISIBLE,
CONSTRAINT fk_SESSION_has_ETUDIANT_SESSION
FOREIGN KEY (codeSess)
REFERENCES centreFormation.SESSION (codeSess)
ON DELETE NO ACTION
ON UPDATE NO ACTION,
CONSTRAINT fk_SESSION_has_ETUDIANT_ETUDIANT1
FOREIGN KEY (numCINEtu)
REFERENCES centreFormation.ETUDIANT (numCINEtu)
ON DELETE NO ACTION
ON UPDATE NO ACTION)
ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS centreFormation.Catalogue (
codeSpec INT NOT NULL,
codeForm INT NOT NULL,
PRIMARY KEY (codeSpec, codeForm),
INDEX fk_SPECIALITE_has_Formation_Formation1_idx (codeForm ASC) VISIBLE,
INDEX fk_SPECIALITE_has_Formation_SPECIALITE1_idx (codeSpec ASC) VISIBLE,
CONSTRAINT fk_SPECIALITE_has_Formation_SPECIALITE1
FOREIGN KEY (codeSpec)
REFERENCES centreFormation.SPECIALITE (codeSpec)
ON DELETE NO ACTION
ON UPDATE NO ACTION,
CONSTRAINT fk_SPECIALITE_has_Formation_Formation1
FOREIGN KEY (codeForm)
REFERENCES centreFormation.Formation (codeForm)
ON DELETE NO ACTION
ON UPDATE NO ACTION)
ENGINE = InnoDB;
MODIFY typeCours VARCHAR(45) NOT NULL;
ADD CONSTRAINT CHK_dateDebut_Fin CHECK (dateFin>= dateDebut);
ADD ACTIVE TINYINT;
NSERT INTO ETUDIANT (numCINEtu,nomEtu,prenomEtu,dateNaissance,adressEtu,villeEtu,niveauEtu)
values
('AB234567','Alami','Ahmad','1986-01-01','Rue du port, 13','Tanger','bac'),
('G5346789','Toumi','Aicha','2000-12-03','N12 immeuble Jaouhara','Casablanca','Master'),
('C0987265','Souni','Sanaa','1998-04-30','Place du peuple n 2','Tanger','Niveau bac'),
('D2356903','Idrissi Alami','Mohammed','1996-05-05','Lotissement najah, rue n 12 immeuble 3','Rabat','Bac+ 4'),
('Y1234987','Ouled thami','Ali','1979-12-04','La ville haute, rue chouhada n 6','Tanger','Bachelor'),
('J3578902','Ben Omar','Abd Allah','1990-06-25','Villa Amina n12 bir rami','Kenitra','Phd'),
('F9827363','Boudiaf','Fatima Zohra','1997-01-10','Immeuble iftikhar, n 13 ettakaddoum','Rabat','Bac + 2’)
Insert into FORMATION (codeForm,titreForm,dureeForm,prixForm)
values
(11,'Programming Java',12,3600),
(12,'web developpment',14,4200),
(13,'Anglais technique',15,3750),
(14,'Communication',10,2500),
(15,'Base de données Oracle',20,6000),
(16,'Soft skills',12,3000);
Insert into session (codesess,nomsess,datedebut,datefin)
values
(1101,'Session 1101','2022-01-02','2022-01-14',11),
(1102,'Session 1102','2022-02-03','2022-02-15',11),
(1201,'Session 1201','2022-03-04','2022-03-18',12),
(1202,'Session 1202','2022-04-05','2022-04-19',12),
(1301,'Session 1301','2022-01-06','2022-01-21',13),
(1302,'Session 1302','2022-05-07','2022-05-22',13),
(1303,'Session 1303','2022-06-08','2022-06-23',13),
(1401,'Session 1401','2022-09-01','2022-09-11',14),
(1402,'Session 1402','2022-08-08','2022-08-18',14),
(1501,'Session 1501','2022-11-11','2022-12-01',15),
(1502,'Session 1502','2022-09-12','2022-10-02',15),
(1601,'Session 1601','2022-09-13','2022-09-25',16),
(1602,'Session 1602','2022-10-14','2022-10-26',16),
(1104,'Session 1104','2022-10-15','2022-10-27',11),
(1203,'Session 1203','2022-11-16','2022-11-30',12),
(1204,'Session 1204','2022-12-17','2022-12-31',12);
Solution Exercice 1 : « Centre de Formation »
INSERT INTO SPECIALITE (codeSpec,nomSpec,descSpec,Active)
VALUES
(101,'GL', 'Genie logiciel et develloppement',1),
(102,'Data', 'Data engineering',1),
(103,'Langues', 'Anglais Français',1),
(104,'Communication','Communication',1),
(105,'Securite','Reseaux et securite',0);
nsert into catalogue (CodeSpec, codeForm)
Values
(101,11),
(101,12),
(102,15),
(101,15),
(103,13),
(104,13),
(104,14),
(104,16);
Insert into INSCRIPTION (codeSess,numCINEtu,TypeCours)
Values
(1101,'AB234567','Distanciel'),
(1101,'G5346789','Distanciel'),
(1101,'C0987265','Distanciel'),
(1101,'D2356903','Distanciel'),
(1101,'Y1234987','Distanciel'),
(1101,'J3578902','Distanciel'),
(1101,'F9827363','Distanciel'),
SELECT COUNT(*) AS nombre_etudiants
FROM ETUDIANT;
SELECT 
    numCINEtu,
    NomEtu,
    TIMESTAMPDIFF(YEAR, dateNaissance, CURDATE()) AS age
FROM ETUDIANT;
SELECT titreForm, prixForm
FROM FORMATION
ORDER BY prixForm DESC
LIMIT 1;

SELECT titreForm, prixForm
FROM FORMATION
ORDER BY prixForm ASC
LIMIT 1;
SELECT SUM(prixForm) AS total_a_payer
FROM FORMATION;
SELECT 
    codeSess, 
    COUNT(numCINEtu) AS nombre_etudiants_inscrits
FROM INSCRIPTION
GROUP BY codeSess;
SELECT DISTINCT numCINEtu
FROM INSCRIPTION;
SELECT 
    numCINEtu, 
    COUNT(codeSess) AS nombre_inscriptions
FROM INSCRIPTION
GROUP BY numCINEtu;
SELECT 
    codeSess, 
    COUNT(*) AS inscriptions_distancielles
FROM INSCRIPTION
WHERE typeCours = 'Distanciel'
GROUP BY codeSess;