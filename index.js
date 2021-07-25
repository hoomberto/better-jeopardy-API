const express = require('express')
// require('dotenv').config()
const app = express();
const cors = require('cors')
// const pool = require('./db')

// const isProduction = process.env.NODE_ENV === 'production'
// const connectionString = `postgresql://${process.env.DB_USER}:${process.env.DB_PASSWORD}@${process.env.DB_HOST}:${process.env.DB_PORT}/${process.env.DB_DATABASE}`

const { pool } = require('./config')

app.use(cors());
app.use(express.json());

app.locals.title = 'Better Jeopardy API';
pool.connect();

app.get('/', (request, response) => {
  response.status(200).send(`Welcome to the ${app.locals.title}`)
});

app.get('/questions', (request, response) => {
  let questions;
  pool.query('SELECT * FROM questions', (err, res) => {
    if (err) {
      console.log(err)
    }
    questions = res.rows;
    response.status(200).send({questions})
  })
});

app.get('/past-games', (request, response) => {
  let pastGames;
  pool.query('SELECT * FROM pastGames', (err, res) => {
    if (err) {
      console.log(err)
    }
    pastGames = res.rows;
    response.status(200).send({pastGames})
  })
});


app.post('/past-games', (request, response) => {

  let pastGame = request.body;

  pastGame.id = Math.floor(100000 + Math.random() * 900000)

  pool.query(
    'INSERT INTO pastGames (game_id, questions, date, score) VALUES ($1, $2, $3, $4)',
    [pastGame.id, JSON.stringify(pastGame.questions), pastGame.date, pastGame.score],
    (err, res) => {
      if (err) {
        console.log(err)
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
