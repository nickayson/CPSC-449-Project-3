PRAGMA foreign_keys=ON;
BEGIN TRANSACTION;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS game;
DROP TABLE IF EXISTS answers;
DROP TABLE IF EXISTS guess;
DROP TABLE IF EXISTS validGuess;

CREATE TABLE users (
    --user_id INTEGER primary key,
    username VARCHAR primary key,
    UNIQUE(username)
);

CREATE TABLE game (
    game_id VARCHAR primary key,
    --user_id INTEGER,
    username VARCHAR,
    guessAmount INTEGER,
    finished BOOLEAN DEFAULT FALSE,
    secretWord VARCHAR,
    FOREIGN KEY (username) REFERENCES users (username)
);

CREATE TABLE answers (
    answer_id INTEGER primary key,
    word VARCHAR,
    UNIQUE(word)
);

CREATE TABLE guess (
     guess_id INTEGER primary key,
     game_id VARCHAR,
     guess_word VARCHAR,
     FOREIGN KEY (game_id) REFERENCES game (game_id)
);

CREATE TABLE validGuess (
    validGuess_id INTEGER primary key,
    word VARCHAR,
    UNIQUE(word)
);