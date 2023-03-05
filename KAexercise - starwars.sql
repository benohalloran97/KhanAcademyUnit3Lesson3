CREATE TABLE starwars(
swID INT PRIMARY KEY,
swfirst TEXT NOT NULL,
swlast TEXT NOT NULL 
);

CREATE TABLE starwarsbio (
swbID INT PRIMARY KEY,
swID INTEGER REFERENCES starwars(swID),
swbjob TEXT NOT NULL,
swbhome TEXT NOT NULL);

INSERT INTO starwars VALUES (1, 'Darth', 'Vader'), 
(2, 'Luke', 'Skywalker'), (3, 'Master', 'Yoda'),
(4, 'Ben', 'Kenobi'), (5, 'Han', 'Solo'),
(6, 'Chew', 'Bacca'), (7, 'Leia', 'Organa'), (8, 'Jabba', 'Hutt'),
(9, 'Emperor', 'Palpatine'), (10, 'R2', 'D2'), (11, 'C3', 'PO'),
(12, 'Lando', 'Calrisian'), (13, 'Rey', 'Skywalker'), (14, 'BB', '8'), (15, 'F1', 'NN');

INSERT INTO starwarsbio VALUES (
1, 1, 'Sith Lord', 'Mustafaar'),
(2, 2, 'Jedi Knight', 'Tattoine'),
(3, 3, 'Jedi Master', 'Dagohbagh'),
(4, 4, 'Jedi Master', 'Tattoine'),
(5, 5, 'Smuggler', 'Millenium Falcon'),
(6, 6, 'Smuggler', 'Kashykk'),
(7,7, 'Princess', 'Alderaan'), (8,8, 'Crime Boss', 'Tattoine'),
(9,9, 'Sith Lord', 'Death Star'), (10,10, 'Astro Droid', 'Millenium Falcon'), (11,11, 'Humanoid Robot', 'Millenium Falcon'),
(12,12, 'Mayor', 'Bespin'), (13,13, 'Jedi Knight', 'Scarif'),
(14,14, 'Ball Droid', 'Millenium Falcon'),
(15,15, 'Ex Stormtrooper', 'Unknown');

SELECT * from starwars;
SELECT * FROM starwarsbio;

SELECT starwars.swfirst, starwars.swlast, starwarsbio.swbjob
FROM starwars
JOIN starwarsbio ON starwars.swID=starwarsbio.swID; 

SELECT starwars.swfirst, starwars.swlast, starwarsbio.swbhome
FROM starwars 
JOIN starwarsbio ON starwars.swID=starwarsbio.swID
WHERE starwarsbio.swbjob = 'Jedi Master';

SELECT starwars.swfirst, starwars.swlast, starwarsbio.swbhome
FROM starwars 
JOIN starwarsbio ON starwars.swID=starwarsbio.swID
WHERE starwarsbio.swbhome = 'Millenium Falcon' AND starwarsbio.swbjob = 'Smuggler';
