#!/bin/sh

sqlite3 ./var/primary/mount/games.db < share/games.sql

sqlite3 ./var/users.db < share/users.sql

sqlite3 ./var/leaderboard.db < share/leaderboard.sql


# ./var > mkdir primary secondary third 