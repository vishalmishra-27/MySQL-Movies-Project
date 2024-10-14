-- Creating Database
create database movie;


-- Creating Tables
create table actor
(
	actID int primary key,
    actFname varchar(255),
    actLname varchar(255),
    actGender varchar(255)
);

create table director
(
	dirId int primary key,
    dirFname varchar(255),
    dirLname varchar(255)
);

create table genres
(
	genId int primary key,
    genTitle varchar(255)
);

create table reviewer
(
	revId int primary key,
    revName varchar(255)
);

create table movie
(
	movId int primary key,
    movTitle varchar(255),
    movYear year,
    movTime int,
    movLang varchar(255),
    movDtRel date,
    movRelCountry varchar(255)
);

create table movieCast
(
	actId int,
    movId int,
    role varchar(255),
    foreign key (actId) references actor(actId),
    foreign key (movId) references movie(movId)
);

create table movieDirection
(
	dirId int,
    movId int,
    foreign key (dirId) references director(dirId),
    foreign key (movId) references movie(movId)
);

CREATE TABLE movieGenres
(
    movId int,
    genId int,
    FOREIGN KEY (movId) REFERENCES movie(movId),
    FOREIGN KEY (genId) REFERENCES genres(genId)
);

create table rating
(
	movId int,
    revId int,
    revStars float,
    numOfRatings int,
    foreign key (movId) references movie(movId),
    foreign key (revId) references reviewer(revId)
);


-- Entering Data
INSERT INTO actor
VALUES
(101, "James", "Stewart", "M"),
(102, "Deborah", "Kerr", "F"),
(103, "Peter", "OToole", "M"),
(104, "Robert", "De Niro", "M"),
(105, "F. Murray", "Abraham", "M"),
(106, "Harrison", "Ford", "M"),
(107, "Nicole", "Kidman", "F"),
(108, "Stephen", "Baldwin", "M"),
(109, "Jack", "Nicholson", "M"),
(110, "Mark", "Wahlberg", "M"),
(111, "Woody", "Allen", "M"),
(112, "Claire", "Danes", "F"),
(113, "Tim", "Robbins", "M"),
(114, "Kevin", "Spacey", "M"),
(115, "Kate", "Winslet", "F"),
(116, "Robin", "Williams", "M"),
(117, "Jon", "Voight", "M"),
(118, "Ewan", "McGregor", "M"),
(119, "Christian", "Bale", "M"),
(120, "Maggie", "Gyllenhaal", "F"),
(121, "Dev", "Patel", "M"),
(122, "Sigourney", "Weaver", "F"),
(123, "David", "Aston", "M"),
(124, "Ali", "Astin", "F");

INSERT INTO director
VALUES
(201, "Alfred", "Hitchcock"),
(202, "Jack", "Clayton"),
(203, "David", "Lean"),
(204, "Michael", "Cimino"),
(205, "Milos", "Forman"),
(206, "Ridley", "Scott"),
(207, "Stanley", "Kubrick"),
(208, "Bryan", "Singer"),
(209, "Roman", "Polanski"),
(210, "Paul", "Thomas Anderson"),
(211, "Woody", "Allen"),
(212, "Hayao", "Miyazaki"),
(213, "Frank", "Darabont"),
(214, "Sam", "Mendes"),
(215, "James", "Cameron"),
(216, "Gus", "Van Sant"),
(217, "John", "Boorman"),
(218, "Danny", "Boyle"),
(219, "Christopher", "Nolan"),
(220, "Richard", "Kelly"),
(221, "Kevin", "Spacey"),
(222, "Andrei", "Tarkovsky"),
(223, "Peter", "Jackson");

insert into genres
values
(1001, "Action"),
(1002, "Adventure"),
(1003, "Animation"),
(1004, "Biography"),
(1005, "Comedy"),
(1006, "Crime"),
(1007, "Drama"),
(1008, "Horror"),
(1009, "Music"),
(1010, "Mystery"),
(1011, "Romance"),
(1012, "Thriller"),
(1013, "War");

INSERT INTO reviewer
VALUES
(9001, "Righty Sock"),
(9002, "Jack Malvern"),
(9003, "Flagrant Baronessa"),
(9004, "Alec Shaw"),
(9005, null),
(9006, "Victor Woeltjen"),
(9007, "Simon Wright"),
(9008, "Neal Wruck"),
(9009, "Paul Monks"),
(9010, "Mike Salvati"),
(9011, null),
(9012, "Wesley S. Walker"),
(9013, "Sasha Goldshtein"),
(9014, "Josh Cates"),
(9015, "Krug Stillo"),
(9016, "Scott LeBrun"),
(9017, "Hannah Steele"),
(9018, "Vincent Cadena"),
(9019, "Brandt Sponseller"),
(9020, "Richard Adams");

insert into movie
values
(901, "Vertigo", '1958', 128, "English", '1958-08-24', "UK"),
(902, "The Innocents", '1961', 100, "English", '1962-02-19', "SW"),
(903, "Lawrence of Arabia", '1962', 216, "English", '1962-12-11', "UK"),
(904, "The Deer Hunter", '1978', 183, "English", '1979-03-08', "UK"),
(905, "Amadeus", '1984', 160, "English", '1985-01-27', "UK"),
(906, "Blade Runner", '1982', 117, "English", '1982-09-09', "UK"),
(907, "Eyes Wide Shut", '1999', 159, "English", null, "UK"),
(908, "The Usual Suspects", '1995', 106, "English", '1995-08-25', "UK"),
(909, "Chinatown", '1974', 130, "English", '1974-08-09', "UK"),
(910, "Boogie Nights", '1997', 155, "English", '1998-02-16', "UK"),
(911, "Annie Hall", '1977', 93, "English", '1977-04-20', "USA"),
(912, "Princess Mononoke", '1997', 134, "Japanese", '2001-10-19', "UK"),
(913, "The Shawshank Redemption", '1994', 142, "English", '1995-02-17', "UK"),
(914, "American Beauty", '1999', 122, "English", null, "UK"),
(915, "Titanic", '1997', 194, "English", '1998-01-23', "UK"),
(916, "Good Will Hunting", '1997', 126, "English", '1998-06-03', "UK"),
(917, "Deliverance", '1972', 109, "English", '1982-10-05', "UK"),
(918, "Trainspotting", '1996', 94, "English", '1996-02-23', "UK"),
(919, "The Prestige", '2006', 130, "English", '2006-11-10', "UK"),
(920, "Donnie Darko", '2001', 113, "English", null, "UK"),
(921, "Slumdog Millionaire", '2008', 120, "English", '2009-01-09', "UK"),
(922, "Aliens", '1986', 137, "English", '1986-08-29', "UK"),
(923, "Beyond the Sea", '2004', 118, "English", '2004-11-26', "UK"),
(924, "Avatar", '2009', 162, "English", '2009-12-17', "UK"),
(926, "Seven Samurai", '1954', 207, "Japanese", '1954-04-26', "JP"),
(927, "Spirited Away", '2001', 125, "Japanese", '2003-09-12', "UK"),
(928, "Back to the Future", '1985', 116, "English", '1985-12-04', "UK"),
(925, "Braveheart", '1995', 178, "English", '1995-09-08', "UK");

INSERT INTO movieCast
VALUES
(101, 901, "John Scottie Ferguson"),
(102, 902, "Miss Giddens"),
(103, 903, "T.E. Lawrence"),
(104, 904, "Michael"),
(105, 905, "Antonio Salieri"),
(106, 906, "Rick Deckard"),
(107, 907, "Alice Harford"),
(108, 908, "McManus"),
(110, 910, "Eddie Adams"),
(111, 911, "Alvy Singer"),
(112, 912, "San"),
(113, 913, "Andy Dufresne"),
(114, 914, "Lester Burnham"),
(115, 915, "Rose DeWitt Bukater"),
(116, 916, "Sean Maguire"),
(117, 917, "Ed"),
(118, 918, "Renton"),
(120, 920, "Elizabeth Darko"),
(121, 921, "Older Jamal"),
(122, 922, "Ripley"),
(114, 923, "Bobby Darin"),
(109, 909, "J.J. Gittes"),
(119, 919, "Alfred Borden");

insert into moviegenres
values
(922, 1001),
(917, 1002),
(903, 1002),
(912, 1003),
(911, 1005),
(908, 1006),
(913, 1006),
(926, 1007),
(928, 1007),
(918, 1007),
(921, 1007),
(902, 1008),
(923, 1009),
(907, 1010),
(927, 1010),
(901, 1010),
(914, 1011),
(906, 1012),
(904, 1013);

INSERT INTO movieDirection
VALUES
(201, 901),
(202, 902),
(203, 903),
(204, 904),
(205, 905),
(206, 906),
(207, 907),
(208, 908),
(209, 909),
(210, 910),
(211, 911),
(212, 912),
(213, 913),
(214, 914),
(215, 915),
(216, 916),
(217, 917),
(218, 918),
(219, 919),
(220, 920),
(218, 921),
(215, 922),
(221, 923);

insert into rating
values
(901, 9001, 8.4, 263575),
(902, 9002, 7.9, 20207),
(903, 9003, 8.3, 202778),
(906, 9005, 8.2, 484746),
(924, 9006, 7.3, null),
(908, 9007, 8.6, 779489),
(909, 9008, null, 227235),
(910, 9009, 3.0, 195961),
(911, 9010, 8.1, 203875),
(912, 9011, 8.4, null),
(914, 9013, 7.0, 862618),
(915, 9001, 7.7, 830095),
(916, 9014, 4.0, 642132),
(925, 9015, 7.7, 81328),
(918, 9016, null, 580301),
(920, 9017, 8.1, 609451),
(921, 9018, 8.0, 667758),
(922, 9019, 8.4, 511613),
(923, 9020, 6.7, 10391);


-- Queries

-- Query 1 List Reviewers with Null Ratings
select reviewer.revName as "Reviewer's Name"
from reviewer
inner join rating on reviewer.revId = rating.revId
where rating.revStars is null;


-- Query 2 List Actors and Their Roles in the Movie "Annie Hall"
select
	actor.actFname as "Actor's First Name", actor.actLname as "Actor's Last Name",
	moviecast.role as "Role"
from actor
inner join moviecast on actor.actID = moviecast.actId
inner join movie on moviecast.movId = movie.movId
where movie.movTitle = "Annie Hall";


-- Query 3 Find Movies Directed by "James Cameron" and Featuring Actors from "Eyes Wide Shut"
SELECT 
    director.dirFname as "Director First Name", director.dirLname as "Director Last Name",
    movie.movTitle as "Movie"
FROM 
    director
JOIN 
    movieDirection ON director.dirId = movieDirection.dirId
JOIN 
    movie ON movieDirection.movId = movie.movId
JOIN 
    movieCast ON movie.movId = movieCast.movId
WHERE 
    movieCast.actId IN (
        SELECT 
            movieCast.actId 
        FROM 
            movieCast 
        JOIN 
            movie ON movieCast.movId = movie.movId 
        WHERE 
            movie.movTitle = 'Eyes Wide Shut'
    );


-- Query 4 List Movies and Actors Whose Movies Were Not Released Between 1990 and 2000
select 
	actor.actFname as "Actor's First Name", actor.actLname as "Actor's Last Name",
    movie.movTitle as "Movie Title", movie.movYear as "Movie Release Year"
from actor
join moviecast on actor.actId = movieCast.actId
join movie on movie.movId = movieCast.movId
where actor.actID not in (
	select movieCast.actId
    from movieCast
    inner join movie on movieCast.movId = movie.movId
    where movie.movYear between 1990 and 2000
)
order by movie.movYear;


-- Query 5 List Actors Who Acted in the Movie "Inception"
select 
	movie.movTitle as "Movie Title", movie.movYear as "Release Year",
    genres.genTitle as "Genre"
from movie
inner join moviegenres on movie.movId = moviegenres.movId
inner join genres on moviegenres.genId = genres.genId;


-- Query 6 List Movies Along with Their Genres and Directors
select
	movie.movTitle as "Movie", movie.movYear as "Release Year",
    genres.genTitle as "Genre",
    concat(director.dirFname," ",director.dirLname) as "Director"
from movie
inner join moviegenres on movie.movId = moviegenres.movId
inner join genres on moviegenres.genId = genres.genId
inner join moviedirection on movie.movId = moviedirection.movId
inner join director on moviedirection.dirId = director.dirId;


-- Query 7 List Genres with Average Runtime and Number of Movies
select
	genres.genTitle as "Genre",
    format(avg(movie.movTime), 0) as "Average Runtime (Minutes)", count(movie.movId) as "No of Movies"
from genres
inner join moviegenres on genres.genId = moviegenres.genId
inner join movie on moviegenres.movId = movie.movId
group by genres.genTitle
order by count(movie.movId) desc;


-- Query 8 Retrieve Details of the Top 5 Shortest Movies, Including Director and Actor Information
select
	movie.movTitle as "Movie", movie.movTime as "Running Time", movie.movYear as "Release Year",
    director.dirFname as "Director First Name", director.dirLname as "Director Last Name",
    actor.actFname as "Actor First Name", actor.actLname as "Actor Last Name",
    moviecast.role as "Role in Movie"
from movie
inner join moviedirection on movie.movId = moviedirection.movId
inner join director on moviedirection.dirId = director.dirId
inner join moviecast on movie.movId = moviecast.movId
inner join actor on moviecast.actId = actor.actID
order by movie.movTime limit 5;


-- Query 9 List Release Years Where Movies Received 3 or 4 Stars
select
	movie.movYear as "Year"
from movie
inner join rating on movie.movId = rating.movId
where rating.revStars in (3, 4)
group by movie.movYear
order by movie.movYear;


-- Query 10 Retrieve Movies Not Released in the UK
select
	movie.movTitle as "Movie", movie.movYear as "Release Year", movie.movTime as "Runtime",
    movie.movDtRel as "Release Date", movie.movRelCountry as "Country of Release"
from movie
where movie.movRelCountry <> "UK";


-- Query 11 Retrieve Movie Details Where Reviewer Name is Unknown
select 
	movie.movTitle as "Movie", movie.movYear as "Release Year", movie.movDtRel as "Release Date",
	director.dirFname as "Director First Name", director.dirLname as "Director Last Name",
	actor.actFname as "Actor First Name", actor.actLname as "Actor Last Name"
from movie
inner join rating on movie.movId = rating.movId
inner join reviewer on rating.revId = reviewer.revId
inner join moviedirection on movie.movId = moviedirection.movId
inner join director on moviedirection.dirId = director.dirId
inner join moviecast on movie.movId = moviecast.movId
inner join actor on moviecast.actId = actor.actID
where reviewer.revName is null;