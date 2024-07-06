CREATE TABLE Pets (
id INT AUTO_INCREMENT,
Typ VARCHAR(12),
Nick VARCHAR(20),
BirthDay DATE,
Commands SET('Sit','Stay','Fetch','Pounce','Roll','Hide','Paw','Bark','Scratch','Spin','Meow','Jump','Trot','Canter','Gallop','Walk','Carry Load','Bray','Kick','Run'),
PRIMARY KEY(id));

INSERT INTO Pets (Typ, Nick, BirthDay, Commands)
SELECT 'Cat', Nick, BirthDay, Commands FROM Cat
UNION ALL SELECT 'Dog', Nick, BirthDay, Commands FROM Dog
UNION ALL SELECT 'Hamster', Nick, BirthDay, Commands FROM Hamster;
