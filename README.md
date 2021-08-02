# Better Jeopardy API

## [View The Deployed API Here](https://better-jeopardy-api-v2.herokuapp.com/api/v1/questions)

## [Our Front-End Site](https://github.com/novaraptur/better-jeopardy)

## Overview

The Better Jeopardy API is an API of Jeopardy trivia questions in multiple-choice format, created as a back end for our stretch-tech Mod 3 FE Turing project. This API was constructed using PostgresQL / SQL to create relational databases, and Express to set up the server. The API was then deployed to Heroku, and can be accessed via the following endpoints.

 - `/api/v1/past-games` -- to view past game data posted to the API
 - `/api/v1/questions` -- to view all of the trivia question objects in our API
 - `/api/v1/questions/:[question_id]` -- input the id of a question to view just that single question object
 - `/api/v1/past-games/:[game_id]` -- input the id of a past game to view just that single past game object

[Project Rubric](https://frontend.turing.edu/projects/module-3/stretch.html)

## Contributors

[Bobby](https://github.com/hoomberto)

[Shawn](https://github.com/shawnmcmahon)

[Dean](https://github.com/novaraptur)

## Future Extensions

 - [ ] Flesh out the back-end database will all Jeopardy questions in multiple-choice format

## Tools & Technologies

 - SQL
 - PostgresQL
 - Express
 - Heroku
