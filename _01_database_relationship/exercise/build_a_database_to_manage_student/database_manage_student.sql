CREATE DATABASE IF NOT EXISTS `student_management`;
USE student_management;

CREATE TABLE IF NOT EXISTS student (
    id INT,
    name_of_student CHARACTER(255),
    age INT,
    country CHARACTER(255)
);

CREATE TABLE IF NOT EXISTS class (
    id_of_class INT,
    nameOfClass CHARACTER(255)
);

CREATE TABLE IF NOT EXISTS teacher (
    id INT,
    name_of_teacher CHARACTER(255),
    age INT,
    country CHARACTER(255)
);

insert into class values (1,"MATH");
insert into class values (2,"HISTORY");

insert into student values (1,"Hao",18,'viet nam');
insert into student values (2,"Phong",19,'lao');

insert into teacher values (1,"Tien",24,'viet nam');
insert into teacher values (2,"Chien",25,'vietnam');