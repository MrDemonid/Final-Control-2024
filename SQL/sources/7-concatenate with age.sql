CREATE TABLE AllAnimal (
id INT AUTO_INCREMENT,
Typ VARCHAR(12),
Nick VARCHAR(20),
BirthDay DATE,
Commands SET('Sit','Stay','Fetch','Pounce','Roll','Hide','Paw','Bark','Scratch','Spin','Meow','Jump','Trot','Canter','Gallop','Walk','Carry Load','Bray','Kick','Run'),
Age TEXT,
PRIMARY KEY(id));

INSERT INTO AllAnimal (Typ, Nick, BirthDay, Commands, Age)
SELECT Typ, Nick, BirthDay, Commands, 
CONCAT(TIMESTAMPDIFF(MONTH, BirthDay, CURDATE()) div 12, ' year, ', TIMESTAMPDIFF(MONTH, BirthDay, CURDATE()) % 12, ' month')
FROM Pets
UNION ALL SELECT Typ, Nick, BirthDay, Commands,
CONCAT(TIMESTAMPDIFF(MONTH, BirthDay, CURDATE()) div 12, ' year, ', TIMESTAMPDIFF(MONTH, BirthDay, CURDATE()) % 12, ' month')
FROM Packs;
