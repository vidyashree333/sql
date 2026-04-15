CREATE DATABASE SmartCampusDB;
USE SmartCampusDB;

CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    email VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(50),
    role VARCHAR(50)
);

INSERT INTO Users VALUES (1,'Rohit',22,'Male','rohit@gmail.com','9876600001','Bangalore','Student');

-----------------------------------------------------

CREATE TABLE Guides (
    guide_id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(50),
    experience INT,
    email VARCHAR(100),
    phone VARCHAR(15),
    salary DECIMAL(10,2),
    department VARCHAR(50)
);

INSERT INTO Guides VALUES (101,'Sanjay','Math',10,'sanjay@gmail.com','9876600002',52000,'Science');

-----------------------------------------------------

CREATE TABLE Programs (
    program_id INT PRIMARY KEY,
    name VARCHAR(50),
    duration VARCHAR(20),
    fees DECIMAL(10,2),
    dept VARCHAR(50),
    level VARCHAR(20),
    start_date DATE,
    mentor VARCHAR(50)
);

INSERT INTO Programs VALUES (201,'BSc','3 Years',50000,'Science','UG','2024-06-01','Sanjay');

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

INSERT INTO Exams VALUES (301,'Mid Term','2025-02-20','Math',100,40,'3 hrs',2);

-----------------------------------------------------

CREATE TABLE Assets (
    asset_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(50),
    vendor VARCHAR(50),
    year INT,
    category VARCHAR(50),
    price DECIMAL(10,2),
    available BOOLEAN
);

INSERT INTO Assets VALUES (401,'Math Book','RD Sharma','Pearson',2020,'Education',450,TRUE);