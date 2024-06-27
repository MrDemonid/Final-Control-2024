CREATE TABLE Pets (
id INT AUTO_INCREMENT,
Typ VARCHAR(12),
Name VARCHAR(20),
BirthDay DATE,
Commands TEXT,
PRIMARY KEY(id));

INSERT INTO Pets (Typ, Name, BirthDay, Commands)
SELECT 'Cat', Name, BirthDay, Commands FROM Cat
UNION ALL SELECT 'Dog', Name, BirthDay, Commands FROM Dog
UNION ALL SELECT 'Hamster', Name, BirthDay, Commands FROM Hamster;
