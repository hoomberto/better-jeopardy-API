const express = require('express')
const app = express();
const cors = require('cors')
const pool = require('./db')

app.use(cors());
app.use(express.json());

app.locals.title = 'Better Jeopardy API';
pool.connect();
