CREATE DATABASE EduCenterDB;
USE EduCenterDB;

CREATE TABLE Learners (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    email VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(50),
    course VARCHAR(50)
);

INSERT INTO Learners VALUES (1,'Vijay',21,'Male','vijay@gmail.com','9876577777','Hassan','BCA');

-----------------------------------------------------

CREATE TABLE Tutors (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(50),
    experience INT,
    email VARCHAR(100),
    phone VARCHAR(15),
    salary DECIMAL(10,2),
    dept VARCHAR(50)
);

INSERT INTO Tutors VALUES (101,'Priya','CS',7,'priya@gmail.com','9876588888',50000,'IT');

-----------------------------------------------------

CREATE TABLE Programs (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    duration VARCHAR(20),
    fees DECIMAL(10,2),
    dept VARCHAR(50),
    level VARCHAR(20),
    start_date DATE,
    guide VARCHAR(50)
);

INSERT INTO Programs VALUES (201,'BCA','3 Years',60000,'IT','UG','2024-06-01','Priya');

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

INSERT INTO Exams VALUES (301,'Semester Exam','2025-03-15','CS',100,40,'3 hrs',2);

-----------------------------------------------------

CREATE TABLE Resources (
    id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(50),
    publisher VARCHAR(50),
    year INT,
    category VARCHAR(50),
    price DECIMAL(10,2),
    available BOOLEAN
);

INSERT INTO Resources VALUES (401,'C Programming','Dennis','Pearson',2019,'Programming',500,TRUE);