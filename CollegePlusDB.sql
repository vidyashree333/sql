CREATE DATABASE CollegePlusDB;
USE CollegePlusDB;

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

INSERT INTO Students VALUES (1,'Asha',20,'Female','asha@gmail.com','9876555555','Mangalore','BCom');

-----------------------------------------------------

CREATE TABLE Lecturers (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(50),
    experience INT,
    email VARCHAR(100),
    phone VARCHAR(15),
    salary DECIMAL(10,2),
    dept VARCHAR(50)
);

INSERT INTO Lecturers VALUES (101,'Ramesh','Accounts',12,'ramesh@gmail.com','9876566666',60000,'Commerce');

-----------------------------------------------------

CREATE TABLE Courses (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    duration VARCHAR(20),
    fees DECIMAL(10,2),
    dept VARCHAR(50),
    level VARCHAR(20),
    start_date DATE,
    faculty VARCHAR(50)
);

INSERT INTO Courses VALUES (201,'BCom','3 Years',55000,'Commerce','UG','2024-06-01','Ramesh');

-----------------------------------------------------

CREATE TABLE Exams (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    date DATE,
    subject VARCHAR(50),
    total INT,
    pass INT,
    duration VARCHAR(20),
    sem INT
);

INSERT INTO Exams VALUES (301,'Internal','2025-02-25','Accounts',100,40,'3 hrs',2);

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

INSERT INTO Library VALUES (401,'Accounts Book','TS Grewal','Sultan',2021,'Commerce',650,TRUE);