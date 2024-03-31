create database movies;
use movies;



DROP TABLE IF EXISTS movies.gender;

CREATE TABLE movies.gender (
  gender_id INT NOT NULL,
  gender VARCHAR(20) DEFAULT NULL,
  CONSTRAINT pk_gender PRIMARY KEY (gender_id)
);

INSERT INTO movies.gender (gender_id, gender) VALUES
(0,'Unspecified'),
(1,'Female'),
(2,'Male');

CREATE TABLE movies.movie_cast (
  movie_id INT DEFAULT NULL,
  person_id INT DEFAULT NULL,
  character_name varchar(400) DEFAULT NULL,
  gender_id INT DEFAULT NULL,
  cast_order int(5) DEFAULT NULL,
  CONSTRAINT fk_mca_gender FOREIGN KEY (gender_id) REFERENCES movies.gender (gender_id),
  CONSTRAINT fk_mca_movie FOREIGN KEY (movie_id) REFERENCES movies.movie (movie_id),
  CONSTRAINT fk_mca_per FOREIGN KEY (person_id) REFERENCES movies.person (person_id)
);



INSERT INTO movies.movie_cast (movie_id, person_id, character_name, gender_id, cast_order) VALUES
(285,85,'Captain Jack Sparrow',2,0),
(285,114,'Will Turner',2,1),
(285,116,'Elizabeth Swann',1,2),
(285,1640,'William Bootstrap Bill Turner',2,3),
(285,1619,'Captain Sao Feng',2,4),
(285,2440,'Captain Davy Jones',2,5),
(285,118,'Captain Hector Barbossa',2,6),
(285,1709,'Admiral James Norrington',2,7),
(285,2449,'Joshamee Gibbs',2,8),
(285,2441,'Lord Cutler Beckett',2,9),
(285,2038,'Tia Dalma',1,10),
(285,378,'Governor Weatherby Swann',2,11),
(285,1430,'Captain Teague Sparrow',2,12),
(285,1710,'Pintel',2,13),
(285,1711,'Ragetti',2,14),
(285,4031,'Lieutenant Theodore Groves',2,15),
(285,1715,'Cotton',2,16),
(285,4030,'Marty',2,17),
(285,939,'Ian Mercer',0,18),
(285,2450,'Scarlett',1,19),
(285,2452,'Giselle',1,20),
(285,1714,'Mullroy',2,21),
(285,1713,'Murtogg',0,22),
(285,22075,'Tai Huang',2,23),
(285,61259,'Henry Turner',2,24),
(285,33500,'Mistress Ching',1,25),
(285,1224149,'Lieutenant Greitzer',2,26),
(285,429401,'Hadras',2,27),
(285,1123,'Clacker',0,28),
(285,1056117,'Penrod',2,29),
(285,21700,'Cotton\'s Parrot (voice)',2,30),
(285,1430,'Captain Teague',2,31),
(285,2603,'Captain Jocard',2,32),
(285,70577,'Captain Ammand',0,33),
(559,2219,'Peter Parker / Spider-Man',2,0),
(559,205,'Mary Jane Watson',1,1),
(559,17051,'Harry Osborn / New Goblin',2,2),
(559,19159,'Flint Marko / Sandman',2,3),
(559,17052,'Eddie Brock / Venom',2,4),
(559,18997,'Gwen Stacey',1,5),
(559,18998,'May Parker',1,6),
(559,2505,'Captain Stacey',2,7),
(559,18999,'J. Jonah Jameson',2,8),
(559,9207,'Mrs. Marko',1,9),
(559,19152,'Dr. Curt Connors',2,10),
(559,5502,'Joseph Robertson',2,11),
(559,9281,'Miss Brant',1,12),
(559,11769,'Hoffman',2,13),
(559,6585,'Penny Marko',1,14),
(559,5293,'Norman Osborn / Green Goblin',2,15),
(559,19153,'Ben Parker',0,16),
(559,2368,'Mr. Ditkovitch',2,17),
(559,20645,'Ursula',1,18),
(559,20582,'Dennis Carradine / Carjacker',2,19),
(559,20580,'Flash Thompson',2,20),
(559,7624,'Man in Times Square',2,21),
(559,11357,'Mau00eetre d',2,22),
(559,19155,'Pianist',2,23),
(559,7628,'Driver',0,24),
(559,19154,'John Jameson',2,25),
(559,19326,'Houseman',0,26),
(559,59206,'Mrs. Stacy',1,27),
(559,78311,'Photographer',2,28),
(559,116627,'Anchorman',0,29),
(559,113608,'Jennifer Dugan',1,30),
(559,99932,'Congratulatory Woman at Daily Bugle',1,31),
(559,552526,'Crane Disaster Radio Policeman',2,32),
(559,1226471,'Play Director',2,33),
(559,159456,'Play Producer',2,34),
(559,105701,'Jazz Club Manager',2,35),
(559,66653,'Precinct Detective',2,36),
(559,1451076,'Emergency Room Doctor',2,37),
(559,11766,'Crane Operator',0,38),
(559,1781288,'Woman Outside Theater',1,39),
(559,1739821,'Police Detective',0,40),
(559,1735986,'New Jersey State Policeman',0,41),
(559,1781297,'New Jersey State Policeman',0,42),
(559,1435965,'Test Site Technician',1,43),
(559,1781298,'Test Site Technician',0,44),
(559,233298,'Test Site Technician',2,45),
(559,60490,'Test Site Technician',2,46),
(559,175606,'Test Site Technician',0,47),
(559,1656631,'Test Site Technician',1,48),
(559,173163,'ICU Nurse',0,49),
(559,1781299,'Cop at Crane Disaster',0,50),
(559,1781300,'Mary Jane\'s Replacement',1,51),
(559,1781301,'Boy at Key to the City Ceremony',0,52),
(559,1781302,'Councilwoman',1,53),
(559,53257,'Policeman at Sand Truck',2,54),
(559,92486,'Policeman at Sand Truck',0,55),
(559,52946,'Armored Car Driver',2,56),
(559,1781303,'Newstand Patron',0,57),
(559,98396,'Newstand Patron',0,58),
(559,558055,'Newstand Patron',1,59),
(559,1781304,'Coffee Shop Waitress',1,60),
(559,1781307,'Jazz Club Waitress',1,61),
(559,193946,'Jazz Club Bouncer',2,62),
(559,1446719,'Photoshoot Client',0,63),
(559,1781308,'Businessman (uncredited)',0,64),
(559,1781309,'Theater Attendee (uncredited)',0,65),
(559,1781310,'Pedestrian (uncredited)',0,66),
(559,1781311,'I.C.U Nurse (uncredited)',1,67),
(559,1653331,'NYPD Officer (uncredited)',2,68),
(559,1781312,'Model (uncredited)',1,69),
(559,111243,'Bucket Boy (uncredited)',2,70),
(559,1781313,'News Reporter (uncredited)',1,71),
(559,1781194,'Photographer (uncredited)',0,72),
(559,1781318,'Rescued Girl (uncredited)',1,73),
(559,454223,'Photographer (uncredited)',0,74),
(559,232042,'Jazz Club Waitress (uncredited)',1,75),
(559,1496942,'Theater Patron (uncredited)',0,76),
(559,1209717,'Jazz Club Girl (uncredited)',1,77),
(559,1781325,'Columbia Grad Student (uncredited)',1,78),
(559,1509622,'New York City Commuter / Driver (uncredited)',2,79),
(559,1610271,'Girl at Key Ceremony (uncredited)',1,80),
(559,1781326,'Pedestrian (uncredited)',0,81),
(559,1781199,'A Spidey Kid (uncredited)',1,82),
(559,1781205,'A Spidey Kid (uncredited)',1,83),
(559,1781217,'A Spidey Kid (uncredited)',1,84),
(559,1781327,'Businessman (uncredited)',0,85),
(559,1636759,'Automobile Driver (uncredited)',0,86),
(559,1781328,'Spectator (uncredited)',0,87),
(559,1781329,'News Spectator (uncredited)',0,88),
(559,1781330,'Funeral Limo Driver (uncredited)',0,89),
(559,1639432,'News Reporter (uncredited)',0,90),
(559,1781331,'Cop (uncredited)',0,91),
(559,1781332,'Female New Yorker (uncredited)',1,92),
(559,1316667,'Jazz Club Bouncer (uncredited)',0,93),
(559,105632,'Girl at Key Ceremony (uncredited)',1,94),
(559,1781333,'Student (uncredited)',0,95),
(559,1292243,'ER Nurse (uncredited)',1,96),
(559,1781334,'Dog Walker (uncredited)',1,97),
(559,1752230,'Observer (uncredited)',0,98),
(559,1781221,'Businesswoman (uncredited)',1,99),
(559,570374,'Woman in Court (uncredited)',1,100),
(559,1246221,'British Publicist (uncredited)',1,101),
(559,1781344,'Shocked Pedestrian (uncredited)',1,102),
(559,1781345,'Journalist (uncredited)',1,103),
(559,1781346,'Girl Screaming in Camaro (uncredited)',1,104),
(559,1781347,'Kid in Times Square (uncredited)',0,105),
(559,163930,'Oscorp Receptionist (uncredited)',1,106),
(559,1781348,'Girl in Times Square (uncredited)',1,107),
(559,1697017,'Robbie\'s Assistant (uncredited)',1,108),
(559,1781349,'Theatergoer (uncredited)',0,109),
(559,1480150,'Businessman (uncredited)',0,110),
(559,1178562,'Beautiful Girl (uncredited)',1,111),
(559,1344665,'Beautiful Woman (uncredited)',1,112),
(559,118389,'Police Officer (uncredited)',0,113),
(559,1781350,'Beautiful Woman (uncredited)',1,114),
(559,1781351,'Beautiful Woman (uncredited)',0,115),
(559,60127,'Businesswoman (uncredited)',1,116),
(559,1781352,'Pedestrian (uncredited)',0,117),
(559,1422991,'Sandman Victim (uncredited)',1,118),
(559,106147,'Bad Girl (uncredited)',1,119),
(559,1691382,'City Hall Cheerer (uncredited)',0,120),
(559,1781353,'Guy with Ticket (uncredited)',0,121),
(559,1367833,'Jazz Club Beatnik (uncredited)',0,122),
(559,1781354,'Jazz Club Guest (uncredited)',0,123),
(559,1781355,'Cafu00e9 Girl (uncredited)',1,124),
(559,1781356,'Jazz Club Patron (uncredited)',1,125),
(559,1340943,'Jazz Club Waitress (uncredited)',1,126),
(559,211964,'Firefighter (uncredited)',0,127),
(559,1781358,'Police Officer (uncredited)',0,128),
(559,1778304,'Broadway Audience Member (uncredited)',0,129),
(559,1781359,'Jazz Club Musician (uncredited)',0,130),
(559,1781360,'Girl in Cab (uncredited)',1,131),
(559,1454306,'Model (uncredited)',1,132),
(559,1781361,'Hot Girl (uncredited)',0,133),
(559,1781362,'Beautiful Woman (uncredited)',1,134),
(559,1781365,'Bar Patron #5 (uncredited)',0,135),
(559,1614425,'Model (uncredited)',1,136),
(559,567242,'Model (uncredited)',0,137),
(559,1781366,'Student (uncredited)',0,138),
(559,1781368,'Restaurant Patron (uncredited)',0,139),
(559,1225878,'ER Nurse (uncredited)',1,140),
(559,1781371,'City Hall Cheerer (uncredited)',0,141),
(559,1368459,'Spectator (uncredited)',2,142),
(767,10980,'Harry Potter',2,0),
(767,10989,'Ron Weasley',2,1),
(767,10990,'Hermione Granger',1,2),
(767,10993,'Draco Malfoy',2,3),
(767,5658,'Albus Dumbledore',2,4),
(767,388,'Horace Slughorn',2,5),
(767,1283,'Bellatrix Lestrange',1,6),
(767,1923,'Rubeus Hagrid',2,7),
(767,10978,'Minerva McGonagall',1,8),
(767,4566,'Severus Snape',2,9),
(767,9191,'Peter Pettigrew',2,10),
(767,11207,'Remus Lupin',2,11),
(767,477,'Molly Weasley',1,12),
(767,96841,'Neville Longbottom',2,13),
(767,140367,'Luna Lovegood',1,14),
(767,10991,'Ginny Weasley',1,15),
(767,140368,'George Weasley',2,16),
(767,96851,'Fred Weasley',2,17),
(767,20999,'Arthur Weasley',2,18),
(767,11184,'Filius Flitwick',2,19),
(767,3300,'Nymphadora Tonks',1,20),
(767,234933,'Cho Chang',1,21),
(767,60348,'Fenrir Greyback',2,22),
(767,10988,'Lily Potter',1,23),
(767,15737,'Narcissa Malfoy',1,24),
(767,234934,'Cormac McLaggen',2,25),
(767,11180,'Argus Filch',2,26),
(767,964834,'Tom Riddle (16 Years)',2,27),
(767,1114487,'Tom Riddle (11 Years)',0,28),
(767,9138,'Poppy Pomfrey',1,29),
(767,234926,'Padma Patil',1,30),
(767,234925,'Parvati Patil',0,31),
(767,174398,'Katie Bell',1,32),
(767,234922,'Seamus Finnigan',2,33),
(767,234929,'Romilda Vane',1,34),
(767,11212,'Gregory Goyle',2,35),
(767,956224,'Vincent Crabbe',2,36),
(767,234928,'Pansy Parkinson',1,37),
(767,234924,'Lavender Brown',1,38),
(767,234927,'Blaise Zabini',0,39),
(767,234923,'Dean Thomas',0,40),
(767,1796454,'Marcus Belby',0,41),
(767,568374,'Nigel Wolpert',0,42),
(767,52888,'Eldred Worple',2,43),
(767,234930,'Leanne',0,44),
(767,202032,'Amycus Carrow',2,45),
(767,568378,'Alecto Carrow',1,46),
(767,234919,'Thorfinn Rowle',2,47),
(767,89387,'Waitress',0,48),
(1452,17271,'Superman / Clark Kent',2,0),
(1452,1979,'Lex Luthor',2,1),
(1452,7517,'Lois Lane',1,2),
(1452,11006,'Richard White',2,3),
(1452,7489,'Kitty Kowalski',1,4),
(1452,8924,'Perry White',2,5),
(1452,53492,'Jimmy Olsen',0,6),
(1452,2639,'Martha Kent',1,7);

select*from movie_cast;
select person_name from person1 where person_id=(select person_id from movie_cast where gender_id = 2);

select * from movie_cast where gender_id=1 and movie_id=285;

SELECT person_name 
FROM person1 
WHERE person_id IN (
    SELECT person_id 
    FROM movie_cast 
    WHERE gender_id = 2
);
SELECT AVG(cast_order) AS average_cast_order
FROM movies.movie_cast
WHERE movie_id = 285;



select*from movie_cast;

select * from movie_cast where character_name like '%r' or character_name like 'C%';

SELECT gender_id,COUNT(*) AS total_count FROM movies.movie_cast GROUP BY gender_id;

SELECT DISTINCT mc.movie_id
FROM movies.movie_cast mc
JOIN movies.movie m ON mc.movie_id = m.movie_id
WHERE mc.person_id IN (
    SELECT person_id
    FROM movies.movie_cast
    WHERE character_name = 'Captain Jack Sparrow'
);

SELECT gender_id, AVG(cast_order) AS avg_cast_order FROM movie_cast GROUP BY gender_id;

SELECT person_id, COUNT(character_name) AS characters_played FROM movie_cast GROUP BY person_id;


select * from movie;


