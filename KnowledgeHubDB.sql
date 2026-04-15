CREATE DATABASE KnowledgeHubDB;
USE KnowledgeHubDB;

CREATE TABLE Participants (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    email VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(50),
    program VARCHAR(50)
);

INSERT INTO Participants VALUES (1,'Ajay',23,'Male','ajay@gmail.com','9876633333','Mandya','MCA');

-----------------------------------------------------

CREATE TABLE Trainers (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(50),
    experience INT,
    email VARCHAR(100),
    phone VARCHAR(15),
    salary DECIMAL(10,2),
    dept VARCHAR(50)
);

INSERT INTO Trainers VALUES (101,'Geetha','CS',9,'geetha@gmail.com','9876644444',55000,'IT');

-----------------------------------------------------

CREATE TABLE Programs (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    duration VARCHAR(20),
    fees DECIMAL(10,2),
    dept VARCHAR(50),
    level VARCHAR(20),
    start_date DATE,
    mentor VARCHAR(50)
);

INSERT INTO Programs VALUES (201,'MCA','2 Years',90000,'IT','PG','2024-06-01','Geetha');

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

INSERT INTO Exams VALUES (301,'Semester','2025-03-10','CS',100,40,'3 hrs',2);

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

INSERT INTO Resources VALUES (401,'Data Structures','Mark','Pearson',2021,'IT',700,TRUE);