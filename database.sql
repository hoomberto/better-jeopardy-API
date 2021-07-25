CREATE DATABASE betterjeopardy;

CREATE TABLE question(
    question_id SERIAL PRIMARY KEY,
    question text NOT NULL,
    correct_answer text NOT NULL,
    wrong_answer1 text NOT NULL,
    wrong_answer2 text NOT NULL,
    wrong_answer3 text NOT NULL,
    prize INT NOT NULL,
    FOREIGN KEY (categoryID) REFERENCES categories (category_id)
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

 INSERT INTO question (question_id, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, prize)
 VALUES (1, 'What is the JS method for breaking apart an array?', 'split()', 'join()', 'splice()', 'floor()', 400);

 const questionsFromSessions = [
  { question: 'blah blah blah',
    correct: false
  },
  { question: 'secons sconashkdjfga',
    correct: true
  },
  { question: 'asdfdsaf',
    correct: true
  },
 ]

 INSERT INTO pastGames (game_id, questions, date, score)
 VALUES (1, '[{"question":"blah blah blah","correct":false},{"question":"secons sconashkdjfga","correct":true},{"question":"asdfdsaf","correct":true}]', '07/25/21', 1900);




 INSERT INTO question (question_id, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, prize)
 VALUES
 (2, 'It took this much time to write the first version of JS', '7 days', '6 weeks', '9 months', '82 hours', 400),
 (3, 'Which character denotes all non-numbers?', 'd', 'D', 'w', 'W', 300),
 (4, 'This component can manage its own state', 'functional', 'class', 'dumb', 'elegant', 600);


INSERT INTO question (question_id, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, prize)
VALUES (5, 'What is the term for JavaScripts defaulting in types?', 'Type Coercion', 'Type Inception', 'Type Manipulation', 'Type Suspicion', 500);


 INSERT INTO question (question_id, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, prize)

 INSERT INTO question (question_id, question, correct_answer, wrong_answer1, wrong_answer2, wrong_answer3, prize)
 
