#RDB Project

Watch the office hours here: [Office hours link](https://plus.google.com/u/0/events/co3cqvh831fqfqvv4i0og1rfulc?authkey=CNDs2tTUztO4wgE)

We’ll be introducing Project 2, Tournament Results.

In Project 1you worked with object-oriented Python to create a Movie Trailer website. In Project 2, you will be writing a Python module that uses the PostgreSQL database to keep track of players and matches in a game tournament. Mastering this project will help you understand what’s going on under the hood in later projects once you begin to use ORMs or object-relational mapping. This is a programming technique that is used to convert data between incompatible type systems in object-oriented programming languages and will be used to communicate between the server and the database.

Project 2 was designed to teach you about how to create databases through the use of database schemas and how to manipulate the data inside the database. Databases are key in creating a dynamic data-driven web application because databases are persistent data. The data does not disappear when the program ends. Creating a database that properly establishes data relationships and uses appropriate data types will ensure that your application performs efficiently and without error.

This project has two parts: defining the database schema (SQL table definitions), and writing the code that will use it.There are 3 files you have to work with in this project: 
tournament.sql tournament.py, and tournament_test.py.

*tournament.sql* is where you will put the database schema, in the form of SQL create table commands

*tournament.py* is where you will put the code of your module. 

*tournament_test.py* contains test functions that will test the functions you’ve written intournament.py

Changes you make in your fullstack folder on your local machine will reflect in the code on your VM. To begin this project, you need to download vagrant and virtualbox. For those of you who are new to vagrant, vagrant is a development environment that will help us to start hacking. We will be having a future office hours where we will explore vagrant more in depth so we ask that you save specific questions for Discussions or until that date.

To run vagrant, cd to your fullstack/vagrant folder and run ‘vagrant up’ followed by ‘vagrant ssh’

##Let’s Begin!
To connect psql to a database running on the same machine (such as your VM), all you need to give it is the database name. For instance, the command psql forum will connect to the forum database.

[Later on in running your database you have to run just psql followed by `\i tournament.sql]

From within psql, you can run any SQL statement using the tables in the connected database. Make sure to end SQL statements with a semicolon, which is not always required from Python.

Rely on the unit tests as you write your code. If you implement the functions in the order they appear in the file, the test suite can give you incremental progress information.

###tournament.sql
Let’s start off with tournament.sql and see what we need to create in order to get the DB up and running:
First off we need to create the actual database using the:

`CREATE DATABASE [database name];`
We follow that up with the tables that we will be working with, namely Players and Matches. We can create them as:

`CREATE TABLE [table name](....);`
Our Players table can have a name and id set up and our matches table can have say p1 and p2 for the 2 players and a winner column which references the id in players.

Once we have our tables set up, the best practice moving forward would be incorporate views and set up 3 queries in our .sql file for:

Finding the number of matches each player has played.

The number of wins for each player.

The player standings.

(Optional)And then we can have a few sample data values in our table, and we can do that using the insert into command:

`INSERT INTO [table name] VALUES ();`

###Running your database:

`vagrant@vagrant-ubuntu-trusty-32:/vagrant/tournament$ psql
vagrant=> \i tournament.sql
CREATE DATABASE
You are now connected to database "tournament" as user "vagrant".
tournament=>
tournament.py and tournament_test.py`

Populating this file can be done in conjunction with the tournament_test file as each function has its corresponding test function.

You want to ensure that you use the right sequence for running your queries:

`conn = connect()`

`c = conn.cursor()`

`c.execute(“your query;”)`

`conn.commit()`

`conn.close()`

The various functions and their corresponding test functions are:

`connect`
Meant to connect to the database. Already set up for you.

`deleteMatches -- testDeleteMatches`
Remove all the matches records from the database.

`deletePlayers -- testDelete`
Remove all the player records from the database.

`countPlayers -- testCount`
Returns the number of players currently registered

`registerPlayer -- testRegister, testRegisterCountDelete`
Adds a player to the tournament database.

`playerStandings -- testStandingsBeforeMatches`
Returns a list of the players and their win records, sorted by wins. You can use the player standings table created in your .sql file for reference.

`reportMatch -- testReportMatches`
This is to simply populate the matches table and record the winner and loser as (winner,loser) in the insert statement.

`swissPairings - testPairings`
Returns a list of pairs of players for the next round of a match. Here all we are doing is the pairing of alternate players from the player standings table, zipping them up and appending them to a list with values:
(id1, name1, id2, name2)

###Running your project!

Once you have your .sql and .py files set up, it’s a good idea to test them out against the testing file provided to you. You can comment them out and run them one at a time. The tests are run in the following order:
`
if __name__ == '__main__':
  testDeleteMatches()
  testDelete()
  testCount()
  testRegister()
  testRegisterCountDelete()
  testStandingsBeforeMatches()
  testReportMatches()
  testPairings()
  print "Success!  All tests pass!"`

And you should be able to see the following output once all your tests have passed:

`vagrant@vagrant-ubuntu-trusty-32:/vagrant/tournament$ python tournament_test.py`

1. Old matches can be deleted.
2. Player records can be deleted.
3. After deleting, countPlayers() returns zero.
4. After registering a player, countPlayers() returns 1.
5. Players can be registered and deleted.
6. Newly registered players appear in the standings with no matches.
7. After a match, players have updated standings.
8. After one match, players with one win are paired.
Success!  All tests pass!

`vagrant@vagrant-ubuntu-trusty-32:/vagrant/tournament$`

###Tutorial of the swiss pairing tournament style draw:

First round pairing is by random draw. For example, with 16 players they would be matched into 8 random pairs for the first round. For now, assume all games have a winner, and there are no draws.

After the first round, there will be a group or “pack” of 8 players with a score of 1 (win), and a group of 8 players with a score of 0 (loss). For the 2nd round, players in each scoring group will be paired against each other – 1’s versus 1’s and 0’s versus 0’s.

After round 2, there will be three scoring groups:

 4 players who have won both games and have 2 points
 
 8 players who have won a game and lost a game and have 1 point
 
 4 players who have lost both games and have no points.
 

Again, for round 3, players are paired with players in their scoring group. After the third round, the typical scoring groups will be:

2 players who have won 3 games (3 points)

6 players with 2 wins (2 points)

6 players with 1 win (1 point)

2 players with no wins (0 points)

For the fourth (and in this case final) round, the process repeats, and players are matched with others in their scoring group. Note that there are only 2 players who have won all of their games so far – they will be matched against each other for the “championship” game. After the final round, we’ll have something that looks like this:

1 player with 4 points – the winner!

4 players with 3 points – tied for second place

6 players with 2 points

4 players with 1 point

1 player with 0 points

So, as mentioned before, the highlights of the Swiss system are that it produces a clear winner in just a few rounds, no-one is eliminated and almost everyone wins at least one game, but there are many ties to deal with!
