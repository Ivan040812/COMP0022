CREATE DATABASE IF NOT EXISTS moviefestivaldatabase;
USE moviefestivaldatabase;

DROP TABLE IF EXISTS movie_genres;
DROP TABLE IF EXISTS principals;
DROP TABLE IF EXISTS ratings;
DROP TABLE IF EXISTS viewers;
DROP TABLE IF EXISTS names;
DROP TABLE IF EXISTS genres;
DROP TABLE IF EXISTS movies;

CREATE TABLE movies (
    movieId INT AUTO_INCREMENT PRIMARY KEY,
    titleString VARCHAR(50) NOT NULL,
    releaseYear INT,
    avgRating FLOAT
);

CREATE TABLE genres (
    genreId INT AUTO_INCREMENT PRIMARY KEY,
    genreString VARCHAR(20) NOT NULL
);

CREATE TABLE names (
    nameId INT AUTO_INCREMENT PRIMARY KEY,
    nameString VARCHAR(30) NOT NULL
);

CREATE TABLE viewers (
    viewerId INT AUTO_INCREMENT PRIMARY KEY
);

/*
CREATE TABLE traits (
    traitId INT AUTO_INCREMENT PRIMARY KEY,
    traitString VARCHAR(20) NOT NULL
);
*/

CREATE TABLE movie_genres (
    id INT AUTO_INCREMENT PRIMARY KEY,
    movieId INT NOT NULL,
    genreId INT NOT NULL,
    CONSTRAINT fkey_movie_movie_genres
        FOREIGN KEY (movieId) 
        REFERENCES movies(movieId) 
        ON DELETE CASCADE,
    CONSTRAINT fkey_genre_movie_genres
        FOREIGN KEY (genreId) 
        REFERENCES genres(genreId) 
        ON DELETE CASCADE
);

CREATE TABLE principals (
    id INT AUTO_INCREMENT PRIMARY KEY,
    movieId INT NOT NULL,
    nameId INT NOT NULL,
    roleString VARCHAR(20),
    characterString VARCHAR(30),
    CONSTRAINT fkey_movie_principals
        FOREIGN KEY (movieId) 
        REFERENCES movies(movieId) 
        ON DELETE CASCADE,
    CONSTRAINT fkey_name_principals
        FOREIGN KEY (nameId) 
        REFERENCES names(nameId) 
        ON DELETE CASCADE
);

CREATE TABLE ratings (
    ratingId INT AUTO_INCREMENT PRIMARY KEY,
    movieId INT NOT NULL,
    viewerId INT NOT NULL,
    rating DECIMAL(3,1),
    CONSTRAINT fkey_movie_ratings
        FOREIGN KEY (movieId) 
        REFERENCES movies(movieId) 
        ON DELETE CASCADE,
    CONSTRAINT fkey_viewer_ratings
        FOREIGN KEY (viewerId) 
        REFERENCES viewers(viewerId) 
        ON DELETE CASCADE
);

/*
CREATE TABLE personality_traits (
    id INT AUTO_INCREMENT PRIMARY KEY,
    viewerId INT NOT NULL,
    traitId INT NOT NULL,
    CONSTRAINT fkey_viewer
        FOREIGN KEY (viewerId) 
        REFERENCES viewers(viewerId) 
        ON DELETE CASCADE,
    CONSTRAINT fkey_trait
        FOREIGN KEY (traitId) 
        REFERENCES traits(traitId) 
        ON DELETE CASCADE
);
*/