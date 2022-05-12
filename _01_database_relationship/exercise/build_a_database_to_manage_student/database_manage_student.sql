CREATE DATABASE `student_management`;

USE student_management;

-- DROP DATABASE student_management;

CREATE TABLE student (
    id INT,
    nameOfStudent CHARACTER(255),
    age INT,
    country CHARACTER(255)
);

CREATE TABLE class (
    idOfClass INT,
    nameOfClass CHARACTER(255)
);

CREATE TABLE teacher (
    id INT,
    nameOfTeacher CHARACTER(255),
    age INT,
    country CHARACTER(255)
);
