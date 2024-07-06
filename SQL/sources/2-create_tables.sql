CREATE TABLE Cat (
	id INT AUTO_INCREMENT, 
    Nick VARCHAR(20), 
    BirthDay DATE, 
    Commands SET('Sit','Stay','Fetch','Pounce','Roll','Hide','Paw','Bark','Scratch','Spin','Meow','Jump','Trot','Canter','Gallop','Walk','Carry Load','Bray','Kick','Run'),
    PRIMARY KEY(id));

CREATE TABLE Dog (
	id INT AUTO_INCREMENT, 
    Name VARCHAR(20), 
    BirthDay DATE, 
    Commands SET('Sit','Stay','Fetch','Pounce','Roll','Hide','Paw','Bark','Scratch','Spin','Meow','Jump','Trot','Canter','Gallop','Walk','Carry Load','Bray','Kick','Run'),
    PRIMARY KEY(id));
    
CREATE TABLE Hamster (
	id INT AUTO_INCREMENT, 
    Name VARCHAR(20), 
    BirthDay DATE, 
    Commands SET('Sit','Stay','Fetch','Pounce','Roll','Hide','Paw','Bark','Scratch','Spin','Meow','Jump','Trot','Canter','Gallop','Walk','Carry Load','Bray','Kick','Run'),
    PRIMARY KEY(id));
    
CREATE TABLE Horse (
	id INT AUTO_INCREMENT,
    Name VARCHAR(20), 
    BirthDay DATE, 
    Commands SET('Sit','Stay','Fetch','Pounce','Roll','Hide','Paw','Bark','Scratch','Spin','Meow','Jump','Trot','Canter','Gallop','Walk','Carry Load','Bray','Kick','Run'),
    PRIMARY KEY(id));
    
CREATE TABLE Camel (
	id INT AUTO_INCREMENT, 
    Name VARCHAR(20), 
    BirthDay DATE, 
    Commands SET('Sit','Stay','Fetch','Pounce','Roll','Hide','Paw','Bark','Scratch','Spin','Meow','Jump','Trot','Canter','Gallop','Walk','Carry Load','Bray','Kick','Run'),
    PRIMARY KEY(id));
    
CREATE TABLE Donkey (
	id INT AUTO_INCREMENT, 
    Name VARCHAR(20), 
    BirthDay DATE, 
    Commands SET('Sit','Stay','Fetch','Pounce','Roll','Hide','Paw','Bark','Scratch','Spin','Meow','Jump','Trot','Canter','Gallop','Walk','Carry Load','Bray','Kick','Run'),
    PRIMARY KEY(id));
