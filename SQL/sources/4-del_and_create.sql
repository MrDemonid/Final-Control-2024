DELETE FROM Camel;

CREATE TABLE Packs (
id INT AUTO_INCREMENT,
Typ VARCHAR(12),
Name VARCHAR(20),
BirthDay DATE,
Commands TEXT,
PRIMARY KEY(id));

INSERT INTO Packs (Typ, Name, BirthDay, Commands)
SELECT 'Horse', Name, BirthDay, Commands FROM Horse
UNION ALL SELECT 'Camel', Name, BirthDay, Commands FROM Camel
UNION ALL SELECT 'Donkey', Name, BirthDay, Commands FROM Donkey;
