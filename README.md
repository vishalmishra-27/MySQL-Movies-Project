# Movie Database Management Project (MySQL)

## Overview
This project involves designing a **Movie Database Management System** using MySQL. The system stores and manages data related to actors, directors, genres, movies, ratings, and reviews. Additionally, various SQL queries are executed to fetch insights about the stored data.

The project covers:
- Database creation and table relationships.
- Data insertion for multiple entities like actors, directors, and movies.
- Performing SQL queries for data extraction, aggregation, and filtering.

## Database Design
The following tables are created:
- `actor`: Stores actor information.
- `director`: Stores director information.
- `movie`: Stores movie details including title, year, runtime, and release country.
- `genres`: Stores genre information.
- `reviewer`: Stores reviewer details.
- `rating`: Stores movie ratings given by reviewers.
- `movieCast`: Maps actors to movies and their roles.
- `movieDirection`: Maps directors to the movies they directed.
- `movieGenres`: Maps genres to movies.

## Database Schema
Here is an entity-relationship (ER) diagram showing the relationships between the various tables used in this project:

![ER Diagram](https://github.com/vishalmishra-27/MySQL-Movies-Project/blob/main/EER.png)

## SQL Queries
The project includes SQL queries to:
- List directors with the number of movies directed.
- Retrieve movies released after 2000.
- Fetch actors in specific movies.
- Calculate average ratings for movies.
- Filter movies by genre and runtime.
- Other queries for advanced data manipulation and insights.

## Installation and Usage
To use this project:

1. Clone this repository
2. Import the SQL file into your MySQL server
3. Execute the SQL queries in your MySQL Workbench or preferred environment.
