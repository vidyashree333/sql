CREATE DATABASE TrainingDB;
USE TrainingDB;

CREATE TABLE Trainees (
    trainee_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    email VARCHAR(100),
    phone VARCHAR(15),
    location VARCHAR(50),
    course VARCHAR(50)
);

INSERT INTO Trainees VALUES (1,'Manoj',23,'Male','manoj@gmail.com','9876533333','Mandya','Java');

-----------------------------------------------------

CREATE TABLE Coaches (
    coach_id INT PRIMARY KEY,
    name VARCHAR(50),
    skill VARCHAR(50),
    experience INT,
    email VARCHAR(100),
    phone VARCHAR(15),
    salary DECIMAL(10,2),
    dept VARCHAR(50)
);

INSERT INTO Coaches VALUES (101,'Deepa','Java',5,'deepa@gmail.com','9876544444',40000,'IT');

-----------------------------------------------------

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    name VARCHAR(50),
    duration VARCHAR(20),
    fees DECIMAL(10,2),
    dept VARCHAR(50),
    level VARCHAR(20),
    start_date DATE,
    trainer VARCHAR(50)
);

INSERT INTO Courses VALUES (201,'Java','6 Months',30000,'IT','Basic','2024-07-01','Deepa');

-----------------------------------------------------

CREATE TABLE Tests (
    test_id INT PRIMARY KEY,
    name VARCHAR(50),
    date DATE,
    subject VARCHAR(50),
    total INT,
    pass INT,
    duration VARCHAR(20),
    batch VARCHAR(20)
);

INSERT INTO Tests VALUES (301,'Weekly Test','2025-01-15','Java',50,20,'1 hr','Batch A');

-----------------------------------------------------

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(50),
    publisher VARCHAR(50),
    year INT,
    category VARCHAR(50),
    price DECIMAL(10,2),
    available BOOLEAN
);

INSERT INTO Books VALUES (401,'Java Guide','James','Pearson',2022,'Programming',700,TRUE);