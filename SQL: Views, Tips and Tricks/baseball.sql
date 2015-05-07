/* Create db and establish schema */

DROP DATABASE baseball;
CREATE DATABASE baseball;
\c baseball;

CREATE TYPE league AS ENUM ('American League', 'National League');

CREATE TABLE Teams (
    name text NOT NULL,
    city text NOT NULL,
    league league NOT NULL,
    division text NOT NULL,
    id serial PRIMARY KEY --Serial implies "NOT NULL"
);

CREATE TABLE Players (
    name text NOT NULL,
    position text,
    team_id int REFERENCES Teams(id), --NOTE: this table is created second because it references Teams.
    id serial PRIMARY KEY
);

CREATE VIEW v_americanLeague as
    select * from Teams
    where league = 'American League';

CREATE VIEW v_nationalLeague as
    select * from Teams
    where league = 'National League';

/* Populate db */
-- National League
INSERT INTO Teams VALUES('Braves', 'Atlanta', 'National League', 'East');
INSERT INTO Teams VALUES('Mets', 'New York', 'National League', 'East');
INSERT INTO Teams VALUES('Marlins', 'Miami', 'National League', 'East');
INSERT INTO Teams VALUES('Cubs', 'Chicago', 'National League', 'Central');
INSERT INTO Teams VALUES('Cardinals', 'Saint Louis', 'National League', 'Central');
INSERT INTO Teams VALUES('Giants', 'San Francisco', 'National League', 'West');
INSERT INTO Teams VALUES('Dodgers', 'Los Angeles', 'National League', 'West');
--American League
INSERT INTO Teams VALUES('Astros', 'Houston', 'American League', 'West');
INSERT INTO Teams VALUES('A''s', 'Oakland', 'American League', 'West');
INSERT INTO Teams VALUES('Mariners', 'Seatle', 'American League', 'West');
INSERT INTO Teams VALUES('Royals', 'Kansas City', 'American League', 'Central');
INSERT INTO Teams VALUES('Tigers', 'Detroit', 'American League', 'Central');
INSERT INTO Teams VALUES('Blue Jays', 'Toronto', 'American League', 'East');
INSERT INTO Teams VALUES('Orioles', 'Baltimore', 'American League', 'East');
--Players
INSERT INTO Players VALUES('Freddie Freeman', 'First Base', 1);
INSERT INTO Players VALUES('Andrelton Simmons', 'Shortstop', 1);
INSERT INTO Players VALUES('Bartolo Colon', 'Pitcher', 2);
INSERT INTO Players VALUES('Giancarlo Stanton', 'Outfield', 3);
INSERT INTO Players VALUES('Jon Lester', 'Pitcher', 4);
INSERT INTO Players VALUES('Matt Carpenter', 'Third Base', 5);
INSERT INTO Players VALUES('Buster Posey', 'Catcher', 6);
INSERT INTO Players VALUES('Yasiel Puig', 'Outfield', 7);
INSERT INTO Players VALUES('Evan Gattis', 'Designated Hitter', 8);
INSERT INTO Players VALUES('Billy Butler', 'Designated Hitter', 9);
INSERT INTO Players VALUES('Mike Zunino', 'Catcher', 10);
INSERT INTO Players VALUES('Omar Infante', 'Second Base', 11);
INSERT INTO Players VALUES('Al Alburquerque', 'Pitcher', 12);
INSERT INTO Players VALUES('Jose Bautista', 'Outfield', 13);
INSERT INTO Players VALUES('Manny Machado', 'Third Base', 14);
INSERT INTO Players VALUES('Kyle Wren', 'Outfield'); --Note Kyle Wren hasn't made the big leagues yet
