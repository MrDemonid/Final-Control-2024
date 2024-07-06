
SELECT * FROM anm;

/*
UPDATE anm SET commands = ('Sit,Hide,Trot')
WHERE id = 10;
*/

# Показывает все варианты значений для SET
SHOW COLUMNS FROM anm like 'commands';

# выбрать из SET определенные значения
SELECT * FROM anm WHERE commands LIKE '%Sit%';
SELECT * FROM anm WHERE FIND_IN_SET('Walk',commands)>0;
