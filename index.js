const express = require('express')
const app = express();
const cors = require('cors')
const pool = require('./db')

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

app.listen(3001, () => {
  console.log(`${app.locals.title} has started on port 3001`)
})
