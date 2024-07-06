CREATE TABLE AllAnimal (
id INT AUTO_INCREMENT,
Typ VARCHAR(12),
Nick VARCHAR(20),
BirthDay DATE,
Commands SET('Sit','Stay','Fetch','Pounce','Roll','Hide','Paw','Bark','Scratch','Spin','Meow','Jump','Trot','Canter','Gallop','Walk','Carry Load','Bray','Kick','Run'),
PRIMARY KEY(id));

INSERT INTO AllAnimal (Typ, Nick, BirthDay, Commands)
SELECT Typ, Nick, BirthDay, Commands
FROM Pets
UNION ALL SELECT Typ, Nick, BirthDay, Commands
FROM Packs;
