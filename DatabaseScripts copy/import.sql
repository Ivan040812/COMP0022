SET GLOBAL local_infile = 1;

LOAD DATA LOCAL INFILE '/scripts/movies_table.csv'
INTO TABLE movies
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(movieId,titleString,releaseYear,avgRating);

LOAD DATA LOCAL INFILE '/scripts/genres_table.csv'
INTO TABLE genres
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(genreId,genreString);

LOAD DATA LOCAL INFILE '/scripts/names_table.csv'
INTO TABLE names
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(nameId,nameString);

LOAD DATA LOCAL INFILE '/scripts/viewers_table.csv'
INTO TABLE viewers
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(viewerId);

LOAD DATA LOCAL INFILE '/scripts/movie_genres_table.csv'
INTO TABLE movie_genres
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(movieId,genreId);

LOAD DATA LOCAL INFILE '/scripts/principals_table.csv'
INTO TABLE principals
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id,movieId,nameId,roleString,characterString);

LOAD DATA LOCAL INFILE '/scripts/ratings_table.csv'
INTO TABLE ratings
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(movieId,viewerId,rating);