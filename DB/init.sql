-- Create a new database
CREATE DATABASE my_database;

-- Connect to the new database
\c my_database;

-- Create tables
-- enum for user roles
CREATE TYPE user_role AS ENUM ('admin', 'teacher', 'student');
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    role user_role NOT NULL
);

CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT
);

CREATE TABLE course_teacher (
    id SERIAL PRIMARY KEY,
    course_id INT NOT NULL,
    teacher_id INT NOT NULL,
    FOREIGN KEY (course_id) REFERENCES courses(id),
    FOREIGN KEY (teacher_id) REFERENCES users(id)
);

CREATE TABLE course_students (
    id SERIAL PRIMARY KEY,
    course_id INT NOT NULL,
    student_id INT NOT NULL,
    FOREIGN KEY (course_id) REFERENCES courses(id),
    FOREIGN KEY (student_id) REFERENCES users(id)
);

-- Insert initial data into the table
