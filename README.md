# Better Jeopardy API
## [View The Deployed API Here](https://better-jeopardy-api-v2.herokuapp.com/api/v1/questions)
## [Our Front-End Repo](https://github.com/novaraptur/better-jeopardy)
## Overview
The Better Jeopardy API is an API of Jeopardy trivia questions in multiple-choice format, created as a back end for our stretch-tech Mod 3 FE Turing project. This API was constructed using PostgresQL / SQL to create relational databases, and Express to set up the server. The API was then deployed to Heroku, and can be accessed via the following endpoints.
[Project Rubric](https://frontend.turing.edu/projects/module-3/stretch.html)
## Set Up
Clone this repo down, and `cd` into it.
Run `npm install` and ensure that you have postgresql in your `package.json` as a dependency
Run `psql postgres`
Create a new user and password and give them create database access like:
```
CREATE ROLE api_user WITH LOGIN PASSWORD 'password';
ALTER ROLE api_user CREATEDB;
```
Log out of the root user and log in to the newly created user like:
```
\q
psql -d postgres -U <api_user>
```
Create a trivia database and log into it:
```
CREATE DATABASE betterjeopardyv2;
\c betterjeopardyv2
```
Run the commands to create a table for questions found in `database.sql` in your terminal, then do the same to create a table for past games.
Insert all of the values found in `database.sql`.
Open a new terminal window and create a new file in this directory with `touch .env` and fill it out like so:
```
DB_USER=''
DB_PASSWORD=''
DB_HOST=localhost
DB_PORT=5432
DB_DATABASE=betterjeopardyv2
```
Run `npm i cors dotenv express pg`
Go to `config.js` and comment out lines 1 - 17. Comment lines 20 - 41 back in, and double-check that the value of the key `database` in `const config` matches the database name that you gave the database you created earlier.
Run `npm start`
## Endpoints
  |             Endpoint              |              Use             |   Method   |  Required Properties for Request |
  |-----------------------------------|:----------------------------:|:----------:|:--------------------------------:|
  |       `/api/v1/questions`         |      get all questions       |    GET     |               none               |
  | `/api/v1/questions/<question-id>` |  get single question by id   |    GET     |               none               |
  |       `/api/v1/past-games`        |      get all past games      |    GET     |               none               |
  |       `/api/v1/past-games`        |  post new game to the server |    POST    | `{"questions": [], "date": "", "name": "", "score": 100}` |
  |  `/api/v1/past-games/<game-id>`   |     get single game by id    |    GET     |               none               |
## Future Extensions
 - [ ] Flesh out the back-end database will all Jeopardy questions in multiple-choice format
## Tools & Technologies
 - SQL
 - PostgresQL
 - Express
 - Heroku
## Contributors
<table>
     <tr>
          <td> Dean Cook <a href="https://github.com/novaraptur">GH</td>
    </tr>
    </tr>
 <td><img src="https://avatars.githubusercontent.com/u/70540855?v=4" alt="Dean GH img"
width="150" height="auto" /></td>
     <tr>
          <td> Shawn McMahon <a href="https://github.com/shawnmcmahon">GH</td>
      </tr>
      </tr>
<td><img src="https://avatars.githubusercontent.com/u/73731359?v=4" alt="Shawn GH img"
width="150" height="auto" /></td>
    </tr>
     <tr>
        <td> Bobby Vasquez <a href="https://github.com/hoomberto">GH</td>
    </tr>
    </tr>
    <td><img src="https://avatars.githubusercontent.com/u/78388491?v=4" alt="Bobby GH img"
 width="150" height="auto" /></td>
</table>

**************************************************************************
###### This project was created for [Turing School of Software and Design](https://turing.io/)
###### 2021/08/02
