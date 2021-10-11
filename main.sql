BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS `Article` (
	`code_barre`	INTEGER NOT NULL,
	`categorie`	TEXT NOT NULL,
	`nom`	TEXT NOT NULL,
	`prix`	NUMERIC NOT NULL,
	`quantite`	INTEGER NOT NULL,
	`marque`	TEXT,
	PRIMARY KEY(`code_barre`)
);
INSERT INTO `Article` VALUES (3005000000000,'alimentaire','salsa',15,20,'TopMark');
INSERT INTO `Article` VALUES (3005000000001,'alimentaire','patoucochon',2.3,40,'Mcochon');
INSERT INTO `Article` VALUES (3005000000002,'alimentaire','lesoce',4.2,50,'Mcochon');
INSERT INTO `Article` VALUES (3005000000003,'alimentaire','lapasta',1.8,60,'Lapate');
INSERT INTO `Article` VALUES (3005000000004,'alimentaire','bonne bisque',4.9,10,'TopMark');
INSERT INTO `Article` VALUES (3005000000005,'alimentaire','la bonne brioche',3.2,12,'TopMark');
INSERT INTO `Article` VALUES (3005000000006,'alimentaire','brioche magique',3.5,15,'Lapate');
INSERT INTO `Article` VALUES (3060000000012,'hygiene','monsavon',1.3,25,'TopMark');
INSERT INTO `Article` VALUES (3060000000013,'hygiene','douxshamp',2.7,35,'TopMark');
INSERT INTO `Article` VALUES (3060000000014,'hygiene','dentbrill',2.45,40,'Calgote');
INSERT INTO `Article` VALUES (3060000000015,'hygiene','cremelux',5.7,19,'Douxi');
INSERT INTO `Article` VALUES (3070000000000,'quincaillerie','troncon',154,3,'TopMark');
INSERT INTO `Article` VALUES (3070000000001,'quincaillerie','marteau',3.2,10,'Bash');
INSERT INTO `Article` VALUES (3070000000002,'quincaillerie','perceuse',104,0,'Bash');
INSERT INTO `Article` VALUES (3080000000000,'droguerie','recurmagix',5.7,20,'TopMark');
INSERT INTO `Article` VALUES (3080000000001,'droguerie','bic de soude',1.5,20,'TopMark');
COMMIT;
select * from Article;
select count(distinct marque) from Article;
select nom,prix from Article where marque like 'TopMark' order by prix asc;
select nom from Article where quantite = 0;
update Article set nom='monsavon' where quantite=23;
affiche tout les articles avec 'brioche' dans leur nom;
update Article set code_barre=3005000000000 where prix=15.7;
select code_barre from Article where categorie='hygiene';
select nom from Article where prix>100;
select nom from Article where categorie='droguerie' and nom like '%soude%';