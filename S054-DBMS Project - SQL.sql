create database x
use x
CREATE TABLE movie_name (
  movie_id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(1000) DEFAULT NULL,
  CONSTRAINT pk_movie PRIMARY KEY (movie_id)
);

INSERT INTO movie_name (movie_id, title) 
VALUES 
(1, 'The Shawshank Redemption'),
(2, 'Avengers:Endgame'),
(3, 'The Queens Gambit'),
(4, 'Schindler''s List'),
(5, 'Pulp Fiction'),
(6, 'The Lord of the Rings: The Return of the King'),
(7, 'Forrest Gump'),
(8, 'Fight Club'),
(9, 'Inception'),
(10, 'The Matrix'),
(11, 'The Lord of the Rings: The Fellowship of the Ring'),
(12, 'Goodfellas'),
(13, 'The Silence of the Lambs'),
(14, 'Star Wars: Episode V - The Empire Strikes Back'),
(15, 'Killers of the Flower Moon'),
(16, 'The Godfather: Part II'),
(17, 'Fast and Furious'),
(18, 'High School Musical'),
(19, 'The Usual Suspects'),
(20, 'Star Trek'),
(21, 'The Hating Game'),
(22, 'The Green Mile'),
(23, 'Back to the Future'),
(24, 'The Prestige'),
(25, 'The Lion King'),
(26, 'Gladiator'),
(27, 'The Departed'),
(28, 'The Godfather: Part III'),
(29, 'The Pianist'),
(30, 'The Dark Knight Rises'),
(31, 'The Avengers'),
(32, 'The Dark Knight'),
(33, 'The Lord of the Rings: The Two Towers'),
(34, 'The Truman Show'),
(35, 'Saving Private Ryan'),
(36, 'The Sixth Sense'),
(37, 'Diary of a Wimpy Kid'),
(38, 'The Social Network'),
(39, 'Avatar'),
(40, 'Titanic'),
(41, 'Toy Story'),
(42, 'The Terminator'),
(43, 'Indiana Jones and the Raiders of the Lost Ark'),
(44, 'Jurassic Park'),
(45, 'Jaws');

select * from movie_name;

CREATE TABLE genres (
  movie_id INT DEFAULT NULL,
  genre_id INT DEFAULT NULL,
  CONSTRAINT fk_mg_movie FOREIGN KEY (movie_id) REFERENCES movie_name (movie_id)
  );
  
  
 
  
  INSERT INTO genres (movie_id, genre_id) VALUES 
(1, 34),
(2, 55),
(3, 92),   
(4, 78),
(5, 21),
(6, 67),
(7, 43),
(8, 88),
(9, 17),
(10, 72),
(11, 39),
(12, 81),
(13, 63),
(14, 25),
(15, 48),
(16, 95),
(17, 33),
(18, 76),
(19, 19),
(20, 84),
(21, 61),
(22, 38),
(23, 80),
(24, 51),
(25, 26),
(26, 73),
(27, 46),
(28, 98),
(29, 14),
(30, 65),
(31, 41),
(32, 89),
(33, 37),
(34, 70),
(35, 22),
(36, 57),
(37, 83),
(38, 12),
(39, 59),
(40, 94),
(41, 27),
(42, 68),
(43, 49),
(44, 86),
(45, 31);

select * from genres;

 SELECT movie_name.title, movie_name.movie_id
FROM movie_name
JOIN genres ON movie_name.movie_id = genres.movie_id
WHERE genres.genre_id BETWEEN 30 AND 80;

select * from genres where genre_id=22;

select movie_name.title, genres.genre_id
from movie_name
join genres on movie_name.movie_id = genres.movie_id
where movie_name.title LIKE 'A%' OR
      movie_name.title LIKE 'B%' OR
      movie_name.title LIKE 'C%' OR
      movie_name.title LIKE 'D%' OR
      movie_name.title LIKE 'E%';
      
select * from genres where movie_id>30;

select * FROM genres WHERE movie_id % 2 <> 0;      #odd nos

SELECT genres.genre_id
FROM movie_name
JOIN genres ON movie_name.movie_id = genres.movie_id
WHERE movie_name.title = 'Pulp Fiction';

