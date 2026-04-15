CREATE DATABASE AcademyDB;
USE AcademyDB;

CREATE TABLE Members (
    member_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    email VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(50),
    course VARCHAR(50)
);

INSERT INTO Members VALUES (1,'Ravi',22,'Male','ravi@gmail.com','9876501111','Mysore','MBA');

-----------------------------------------------------

CREATE TABLE Mentors (
    mentor_id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(50),
    experience INT,
    email VARCHAR(100),
    phone VARCHAR(15),
    salary DECIMAL(10,2),
    department VARCHAR(50)
);

INSERT INTO Mentors VALUES (101,'Lakshmi','Finance',9,'lakshmi@gmail.com','9876502222',55000,'Commerce');

-----------------------------------------------------

CREATE TABLE Modules (
    module_id INT PRIMARY KEY,
    module_name VARCHAR(50),
    duration VARCHAR(20),
    fees DECIMAL(10,2),
    department VARCHAR(50),
    level VARCHAR(20),
    start_date DATE,
    instructor VARCHAR(50)
);

INSERT INTO Modules VALUES (201,'MBA','2 Years',80000,'Commerce','PG','2024-06-01','Lakshmi');

-----------------------------------------------------

CREATE TABLE Evaluations (
    eval_id INT PRIMARY KEY,
    name VARCHAR(50),
    date DATE,
    subject VARCHAR(50),
    total_marks INT,
    pass_marks INT,
    duration VARCHAR(20),
    term VARCHAR(20)
);

INSERT INTO Evaluations VALUES (301,'Mid Eval','2025-02-10','Finance',100,40,'2 hrs','Term 1');

-----------------------------------------------------

CREATE TABLE Materials (
    material_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(50),
    publisher VARCHAR(50),
    year INT,
    category VARCHAR(50),
    price DECIMAL(10,2),
    available BOOLEAN
);

INSERT INTO Materials VALUES (401,'Finance Basics','Sharma','Pearson',2020,'Education',500,TRUE);