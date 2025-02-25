USE moviefestivaldatabase;

SELECT COUNT(*) FROM movies;
SELECT COUNT(*) FROM genres;
SELECT COUNT(*) FROM names;
SELECT COUNT(*) FROM viewers;
SELECT COUNT(*) FROM movie_genres;
SELECT COUNT(*) FROM principals;
SELECT COUNT(*) FROM ratings;

SELECT * FROM movies LIMIT 5;
SELECT * FROM genres LIMIT 5;
SELECT * FROM names LIMIT 5;
SELECT * FROM viewers LIMIT 5;
SELECT * FROM movie_genres LIMIT 5;
SELECT * FROM principals LIMIT 5;
SELECT * FROM ratings LIMIT 5;

SELECT rating FROM ratings WHERE ratingId = 5;