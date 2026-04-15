CREATE DATABASE CampusDB;
USE CampusDB;

CREATE TABLE Scholars (
    scholar_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    email VARCHAR(100),
    phone VARCHAR(15),
    address VARCHAR(100),
    program VARCHAR(50)
);

INSERT INTO Scholars VALUES (1,'Neha',19,'Female','neha@gmail.com','9876511111','Bangalore','BSc');

-----------------------------------------------------

CREATE TABLE Faculty (
    faculty_id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(50),
    experience INT,
    email VARCHAR(100),
    phone VARCHAR(15),
    salary DECIMAL(10,2),
    department VARCHAR(50)
);

INSERT INTO Faculty VALUES (101,'Arun','Physics',6,'arun@gmail.com','9876522222',48000,'Science');

-----------------------------------------------------

CREATE TABLE Programs (
    program_id INT PRIMARY KEY,
    name VARCHAR(50),
    duration VARCHAR(20),
    fees DECIMAL(10,2),
    dept VARCHAR(50),
    level VARCHAR(20),
    start_date DATE,
    coordinator VARCHAR(50)
);

INSERT INTO Programs VALUES (201,'BSc','3 Years',50000,'Science','UG','2024-06-10','Arun');

-----------------------------------------------------

CREATE TABLE Exams (
    exam_id INT PRIMARY KEY,
    name VARCHAR(50),
    date DATE,
    subject VARCHAR(50),
    total INT,
    pass INT,
    duration VARCHAR(20),
    semester INT
);

INSERT INTO Exams VALUES (301,'Final','2025-03-20','Physics',100,35,'3 hrs',2);

-----------------------------------------------------

CREATE TABLE LibraryItems (
    item_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(50),
    publisher VARCHAR(50),
    year INT,
    category VARCHAR(50),
    cost DECIMAL(10,2),
    status BOOLEAN
);

INSERT INTO LibraryItems VALUES (401,'Physics Book','HC Verma','Oxford',2018,'Science',600,TRUE);