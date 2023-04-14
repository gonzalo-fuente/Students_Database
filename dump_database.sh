#!/bin/bash

# Script to dump the database into a file

pg_dump --clean --create --inserts --username=postgres students > students.sql

# To load the database in postgreSQL

psql -U postgres < students.sql