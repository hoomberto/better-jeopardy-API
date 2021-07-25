CREATE DATABASE betterjeopardy;

CREATE TABLE questions(
    question_id SERIAL PRIMARY KEY,
    question text NOT NULL,
    correct_answer text NOT NULL,
    incorrect_answers json NOT NULL,
    prize INT NOT NULL,
    show_number INT NOT NULL, 
    air_date text NOT NULL,
    category text NOT NULL
);


create table jsontest (id serial primary key, data json)

CREATE TABLE pastGames(
    game_id SERIAL PRIMARY KEY,
    questions json NOT NULL,
    date text NOT NULL,
    score INT NOT NULL
);



CREATE TABLE categories(
    category_id SERIAL PRIMARY KEY,
    name text NOT NULL
);


INSERT INTO questions (question_id, question, correct_answer, incorrect_answers, prize, show_number, air_date, category)
VALUES (1, 'The T-bar, the chair & the gondola are 3 types of these devices that transport skiers', 'lift', '["conveyors", "carriers", "hitches"]', 100, 1739, '03/05/1992', 'Skiing');
