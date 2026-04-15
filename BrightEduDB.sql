CREATE DATABASE BrightEduDB;
USE BrightEduDB;

CREATE TABLE Students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    email VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(50),
    stream VARCHAR(50)
);

INSERT INTO Students VALUES (1,'Nikhil',22,'Male','nikhil@gmail.com','9876677777','Tumkur','BSc');

-----------------------------------------------------

CREATE TABLE Teachers (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(50),
    experience INT,
    email VARCHAR(100),
    phone VARCHAR(15),
    salary DECIMAL(10,2),
    dept VARCHAR(50)
);

INSERT INTO Teachers VALUES (101,'Anu','Chemistry',7,'anu@gmail.com','9876688888',48000,'Science');

-----------------------------------------------------

CREATE TABLE Courses (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    duration VARCHAR(20),
    fees DECIMAL(10,2),
    dept VARCHAR(50),
    level VARCHAR(20),
    start_date DATE,
    instructor VARCHAR(50)
);

INSERT INTO Courses VALUES (201,'BSc','3 Years',50000,'Science','UG','2024-06-01','Anu');

-----------------------------------------------------

CREATE TABLE Exams (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    date DATE,
    subject VARCHAR(50),
    total INT,
    pass INT,
    duration VARCHAR(20),
    semester INT
);

INSERT INTO Exams VALUES (301,'Final','2025-03-25','Chemistry',100,40,'3 hrs',2);

-----------------------------------------------------

CREATE TABLE Library (
    id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(50),
    publisher VARCHAR(50),
    year INT,
    category VARCHAR(50),
    price DECIMAL(10,2),
    available BOOLEAN
);

INSERT INTO Library VALUES (401,'Chemistry Book','OP Tandon','Oxford',2018,'Science',600,TRUE);