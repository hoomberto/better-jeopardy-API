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
VALUES (1, 'The T-bar, the chair & the gondola are 3 types of these devices that transport skiers', 'Lift', '["Conveyors", "Carriers", "Hitches"]', 100, 1739, '03/05/1992', 'Skiing');

INSERT INTO questions (question_id, question, correct_answer, incorrect_answers, prize, show_number, air_date, category)
VALUES (2, 'Skiers wear these in part to reduce glare & prevent eyestrain', 'sunglasses', '["Hat", "Headphones", "Contacts"]', 200, 1739, '03/05/1992', 'Skiing'), 
(3, '"Cosmetic" name of the light, dry snow that is ideal for skiing', 'powder', '[Spray", "Mist", "Debris"]', 300, 1739, '03/05/1992', 'Skiing'),
(4, 'In the snowplow method of stopping, a skier brings the tips of the skis together to form this letter', 'V', '["L", "W", "X"]', 400, 1739, '03/05/1992', 'Skiing')
(5, 'The most basic movement in this type of skiing is the diagonal stride', 'cross country skiing', '["Downhill Skiing", "Alpine Rouring", "Freestyle Skiing"]', 500, 1739, '03/05/1992', 'Skiing'),
(6, 'In 2020 Drake & Lil Durk decided to do this "Now Cry Later', 'Laugh', '["Cry", "Dance", "Sing"]', 100, 8402, '05/18/2021', 'Playing Today''s Hits'),
(7, '"Adore You" was a post-boy band hit for this Brit', 'Charlie''s Angels', '["Bono", "Robbie Williams", "Larry Styles"]', 200, 8402, '05/18/2021', 'Playing Today''s Hits'),
(8, 'This word preceded "Swings" in a 2020 hit by Pop Smoke; just this word was the title of a No.1 hit by 24Goldn', 'Mood', '["Porch", "Jazz", "Full"]', 300, 8402, '05/18/2021', 'Playing Today''s Hits'),
(9, 'Olivia Rodrigo''s first hit single is this breakup song that debuted at No. 1 in 2021', 'Driver License', '["Good 4 U", "Deja Vu", "Happier"]', 400, 8402, '05/18/2021', 'Playing Today''s Hits'),
(10, 'This country superstar added to his hit parade in 2020 with "Happy Does"', 'Kenny Chesney', '["Chipp Mccapp", "George Strait", "Carrie Underwood"]', 500, 8402, '05/18/2021', 'Playing Today''s Hits'),
(11, 'The title of this 1970s series refers to a wealthy guy on a speakerphone & the 3 women who work as detectives for him', 'Kenny Chesney', '["Chipp Mccapp", "George Strait", "Carrie Underwood"]', 100, 8405, '05/21/2021', '20th Century TV'),
(12, 'This actor drove the Knight Industries Two Thousand KITT, for short - before heading for the beach in 1989', 'David Hasselhoff', '["Burt Reynolds", "William Shatner", "Brad Pitt"]', 200, 8405, '05/21/2021', '20th Century TV'),
(13, 'Barbara Eden could literally grant Larry Hagman any wish he could think of in this 1960s sitcom... but he wouldn''t let her!', 'I Dream of Jeannie', '["Harper Valley PTA", "Sabrina the Teenage Witch", "Brand New Life"]', 300, 8405, '05/21/2021', '20th Century TV'),
(14, 'In 1980 Tom Hanks came aboard this ABC show as Rick Martin; hope he tipped Isaac the bartender well', 'The Love Boat', '["Happy Days", "Bosom Buddies", "Cheers"]', 400, 8405, '05/21/2021', '20th Century TV'),
(15, 'Robert Downey Jr. told this lawyer played by Calista Flockhart: "If you need a sympathetic ear, I can fake it"', 'Ally Mcbeal', '["Dianne Lockhart", "Patty Hewes", "Mia Fey"]', 500, 8405, '05/21/2021', '20th Century TV'),
(16, 'Oregon, Idaho', 'Washington', '["California", "Nevada", "Montana"]', 100, 8215, '05/01/2020', 'States By Borders'),
(17, 'New Hampshire', 'Maine' , '["Rhode Island", "Vermont", "New England"]', 200, 8215, '05/01/2020', 'States By Borders'),
(18, 'Indiana, Ohio, Wisconsin', 'Michigan' , '["Minnesota", "Iowa", "Illinois"]', 300, 8215, '05/01/2020', 'States By Borders'),
(19, 'Connectitcut, Massachusetts', 'Rhode Island' , '["New Hampshire", "New York", "Maine"]', 400, 8215, '05/01/2020', 'States By Borders'),
(20, 'New Mexico, Oklahoma, Arkansas, Lousiana', 'Texas' , '["Utah", "Colorado", "Oregon"]', 500, 8215, '05/01/2020', 'States By Borders'),
(21, 'In fiction, it''s the term for the one who tells the story; first person & third person are 2 types', 'Narrator' , '["Author", "Producer", "Publisher"]', 100, 8206, '04/20/2020', 'Literary Terms'),
(22, 'It''s the practical lesson about right & wrong that results from an instructive story like a fable', 'Moral' , '["Theme", "Lesson", "Parable"]', 200, 8206, '04/20/2020', 'Literary Terms'),
(23, 'From Greek words for "first" & "actor", it''s the main character in a story', 'Protagonist' , '["Thespian", "Truant", "Antagonist"]', 300, 8206, '04/20/2020', 'Literary Terms'),
(24, 'The 6-line "Scottish stanza" is also known by the name of this 18th century poet', 'Burns' , '["Haiku", "Monologue", "Verse"]', 400, 8206, '04/20/2020', 'Literary Terms'),
(25, 'This 5-letter word for a figure of speech is widely used to mean any familiar reference', 'Trope', '["Story", "Irony", "Fable"]', 500, 8206, '04/20/2020', 'Literary Terms'),







