DELETE FROM Camel;

CREATE TABLE Packs (
id INT AUTO_INCREMENT,
Typ VARCHAR(12),
Nick VARCHAR(20),
BirthDay DATE,
Commands SET('Sit','Stay','Fetch','Pounce','Roll','Hide','Paw','Bark','Scratch','Spin','Meow','Jump','Trot','Canter','Gallop','Walk','Carry Load','Bray','Kick','Run'),
PRIMARY KEY(id));

INSERT INTO Packs (Typ, Nick, BirthDay, Commands)
SELECT 'Horse', Nick, BirthDay, Commands FROM Horse
UNION ALL SELECT 'Camel', Nick, BirthDay, Commands FROM Camel
UNION ALL SELECT 'Donkey', Nick, BirthDay, Commands FROM Donkey;
