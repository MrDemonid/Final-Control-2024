CREATE TABLE AllAnimal (
id INT AUTO_INCREMENT,
Typ VARCHAR(12),
Name VARCHAR(20),
BirthDay DATE,
Commands TEXT,
Age TEXT,
PRIMARY KEY(id));

INSERT INTO AllAnimal (Typ, Name, BirthDay, Commands, Age)
SELECT Typ, Name, BirthDay, Commands, 
CONCAT(TIMESTAMPDIFF(MONTH, BirthDay, curdate()) div 12, ' year, ', TIMESTAMPDIFF(MONTH, BirthDay, curdate()) % 12, ' month')
FROM Pets
UNION ALL SELECT Typ, Name, BirthDay, Commands,
CONCAT(TIMESTAMPDIFF(MONTH, BirthDay, curdate()) div 12, ' year, ', TIMESTAMPDIFF(MONTH, BirthDay, curdate()) % 12, ' month')
FROM Packs;
