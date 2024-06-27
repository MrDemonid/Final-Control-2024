CREATE TABLE YoungAnimals (
id INT AUTO_INCREMENT,
Typ VARCHAR(12),
Name VARCHAR(20),
BirthDay DATE,
Commands TEXT,
Age TEXT,
PRIMARY KEY(id));

INSERT INTO YoungAnimals (Typ, Name, BirthDay, Commands, Age)
SELECT Typ, Name, BirthDay, Commands, 
CONCAT(TIMESTAMPDIFF(MONTH, BirthDay, curdate()) div 12, ' year, ', TIMESTAMPDIFF(MONTH, BirthDay, curdate()) % 12, ' month')
FROM Pets 
WHERE  
TIMESTAMPDIFF(MONTH, BirthDay, curdate()) >= 12 AND 
TIMESTAMPDIFF(MONTH, BirthDay, curdate()) < 36
UNION ALL SELECT Typ, Name, BirthDay, Commands, 
CONCAT(TIMESTAMPDIFF(MONTH, BirthDay, curdate()) div 12, ' year, ', TIMESTAMPDIFF(MONTH, BirthDay, curdate()) % 12, ' month')
FROM Packs
WHERE  
TIMESTAMPDIFF(MONTH, BirthDay, curdate()) >= 12 AND 
TIMESTAMPDIFF(MONTH, BirthDay, curdate()) < 36
;
