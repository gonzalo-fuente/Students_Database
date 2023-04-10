#!/bin/bash

# Script to dump the database into a file

pg_dump --clean --create --inserts --username=freecodecamp students > students.sql