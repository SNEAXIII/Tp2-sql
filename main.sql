BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS `Livre` (
	`NumEnreg`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`Titre`	TEXT NOT NULL,
	`Auteur`	TEXT NOT NULL,
	`Genre`	TEXT NOT NULL,
	`Parution`	INTEGER,
	`Pages`	INTEGER
);
INSERT INTO `Livre` (NumEnreg,Titre,Auteur,Genre,Parution,Pages) VALUES (18,'De la guerre','Carl Von Clausewitz','Traité',1832,265),
 (134,'Le père Goriot','Honoré de Balzac','Littérature',1835,304),
 (461,'Le feu','Henri Barbusse','Littérature',1916,435),
 (547,'1984','Georges Orwell','SF',1949,280);
COMMIT;

SELECT * FROM Livre;