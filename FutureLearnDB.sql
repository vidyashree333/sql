CREATE DATABASE FutureLearnDB;
USE FutureLearnDB;

CREATE TABLE Enrollees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    email VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(50),
    course VARCHAR(50)
);

INSERT INTO Enrollees VALUES (1,'Pooja',19,'Female','pooja@gmail.com','9876655555','Hassan','BCA');

-----------------------------------------------------

CREATE TABLE Educators (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(50),
    experience INT,
    email VARCHAR(100),
    phone VARCHAR(15),
    salary DECIMAL(10,2),
    dept VARCHAR(50)
);

INSERT INTO Educators VALUES (101,'Ravi','Programming',6,'ravi@gmail.com','9876666666',45000,'IT');

-----------------------------------------------------

CREATE TABLE Courses (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    duration VARCHAR(20),
    fees DECIMAL(10,2),
    dept VARCHAR(50),
    level VARCHAR(20),
    start_date DATE,
    trainer VARCHAR(50)
);

INSERT INTO Courses VALUES (201,'BCA','3 Years',60000,'IT','UG','2024-06-01','Ravi');

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

INSERT INTO Exams VALUES (301,'Mid','2025-02-15','Programming',100,40,'3 hrs',2);

-----------------------------------------------------

CREATE TABLE Books (
    id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(50),
    publisher VARCHAR(50),
    year INT,
    category VARCHAR(50),
    price DECIMAL(10,2),
    available BOOLEAN
);

INSERT INTO Books VALUES (401,'C++ Guide','Bjarne','McGraw',2020,'Programming',650,TRUE);