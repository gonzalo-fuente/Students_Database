-- Create Database

CREATE DATABASE students;

-- Create Tables

CREATE TABLE IF NOT EXISTS majors (
  major_id SERIAL PRIMARY KEY,
  major VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS students (
  students_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  major_id INT REFERENCES majors(major_id),
  gpa NUMERIC(2,1)
);

CREATE TABLE IF NOT EXISTS courses (
  course_id SERIAL PRIMARY KEY,
  course VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS majors_courses (
  major_id INT REFERENCES majors(major_id),
  course_id INT REFERENCES courses(course_id)
);

ALTER TABLE majors_courses ADD PRIMARY KEY (major_id, course_id);