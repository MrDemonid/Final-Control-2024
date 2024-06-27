CREATE TABLE AllAnimal (
id INT AUTO_INCREMENT,
Typ VARCHAR(12),
Name VARCHAR(20),
BirthDay DATE,
Commands TEXT,
PRIMARY KEY(id));

INSERT INTO AllAnimal (Typ, Name, BirthDay, Commands)
SELECT Typ, Name, BirthDay, Commands
FROM Pets
UNION ALL SELECT Typ, Name, BirthDay, Commands
FROM Packs;
