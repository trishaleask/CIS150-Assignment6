1.


SELECT Movie.name, Movie.year
FROM Movie
INNER JOIN Actor ON Movie.id = Actor.actor_id
INNER JOIN Person ON Person.id = Actor.actor_id
WHERE Person.name = 'Geena Davis';


2.


SELECT MIN(runtime), MAX(runtime), AVG(runtime)
FROM Movie
WHERE rating = 'R';


3.


SELECT Oscar.type, Movie.year, Movie.name
FROM Movie
INNER JOIN Oscar ON Oscar.movie_id = Movie.id
WHERE Oscar.person_id='0000229';


4.


SELECT Person.pob, COUNT(Person.pob)
FROM Person
WHERE Person.pob IS NOT NULL
GROUP BY pob
HAVING COUNT(*) >= 50;





5.


SELECT COUNT(id) FROM Movie
WHERE Movie.id NOT IN ( SELECT movie_id FROM Oscar );


6.

SELECT Person.name, COUNT(movie.id)
FROM Person
LEFT OUTER JOIN Actor ON Actor.actor_id = Person.id
LEFT OUTER JOIN Movie ON Movie.id = Actor.actor_id
WHERE Person.dob = '%Sweden%';




7.


SELECT DISTINCT COUNT(director_id)
From Director
INNER JOIN Movie ON Movie.id = Director.movie_id
WHERE Movie.rating = 'R';



8.


UPDATE Movie
SET rating = 'PG-13'
WHERE name LIKE '%Indiana%';