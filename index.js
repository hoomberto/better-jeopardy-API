const express = require('express')
// require('dotenv').config()
const app = express();
const cors = require('cors')

// const pool = require('./db')

// const isProduction = process.env.NODE_ENV === 'production'
// const connectionString = `postgresql://${process.env.DB_USER}:${process.env.DB_PASSWORD}@${process.env.DB_HOST}:${process.env.DB_PORT}/${process.env.DB_DATABASE}`

const { pool } = require('./config')

app.use(express.json());
app.use(cors({
    origin: '*'
}));

app.locals.title = 'Better Jeopardy API';
// app.locals.questions = pool.query
pool.connect();

app.get('/', (request, response) => {
  response.status(200).send(`Welcome to the ${app.locals.title}`)
});

app.get('/api/v1/questions', (request, response) => {
  let questions;
  pool.query('SELECT * FROM questions', (err, res) => {
    console.log(res);
    if (err) {
      console.log(err)
      return err;
    }
    questions = res.rows;
    response.status(200).send({questions})
  })
});

app.get('/api/v1/questions/:id', (request, response) => {
  const { id } = request.params;

  let questions;
  pool.query('SELECT * FROM questions', (err, res) => {
    if (err) {
      console.log(err)
      return err;
    }
    questions = res.rows;
    const match = questions.find(question => question.question_id == id);
    if (!match) return response.status(404).json({message: `No idea found with an id of ${id}`});
    return response.status(200).json(match);
  })
});

app.get('/api/v1/past-games', (request, response) => {
  let pastGames;
  pool.query('SELECT * FROM pastGames', (err, res) => {
    if (err) {
      console.log(err)
      return err;
    }
    pastGames = res.rows;
    response.status(200).send({pastGames})
  })
});


app.post('/api/v1/past-games', (request, response) => {
  let pastGame = request.body;

  pastGame.id = Math.floor(100000 + Math.random() * 900000)
  pool.query(
    'INSERT INTO pastGames (game_id, questions, date, score) VALUES ($1, $2, $3, $4, $5)',
    [pastGame.id, JSON.stringify(pastGame.questions), pastGame.date, pastGame.name, pastGame.score],
    (err, res) => {
      if (err) {
        console.log(err)
        return response.status(422)
      }
    response.status(201).json({status: 'success', message: 'Game added.'})
  })
});


app.listen(process.env.PORT || 3001, () => {
  console.log(`Server listening`)
})
//
// app.listen(3001, () => {
//   console.log(`${app.locals.title} has started on port 3001`)
// })
