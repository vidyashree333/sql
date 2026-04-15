CREATE DATABASE GlobalInstituteDB;
USE GlobalInstituteDB;

CREATE TABLE Candidates (
    candidate_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    email VARCHAR(100),
    phone VARCHAR(15),
    location VARCHAR(50),
    course VARCHAR(50)
);

INSERT INTO Candidates VALUES (1,'Sneha',20,'Female','sneha@gmail.com','9876611111','Mysore','BBA');

-----------------------------------------------------

CREATE TABLE Experts (
    expert_id INT PRIMARY KEY,
    name VARCHAR(50),
    field VARCHAR(50),
    experience INT,
    email VARCHAR(100),
    phone VARCHAR(15),
    salary DECIMAL(10,2),
    dept VARCHAR(50)
);

INSERT INTO Experts VALUES (101,'Kavita','HR',8,'kavita@gmail.com','9876622222',48000,'Management');

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

INSERT INTO Courses VALUES (201,'BBA','3 Years',65000,'Management','UG','2024-07-01','Kavita');

-----------------------------------------------------

CREATE TABLE Tests (
    test_id INT PRIMARY KEY,
    name VARCHAR(50),
    date DATE,
    subject VARCHAR(50),
    total INT,
    pass INT,
    duration VARCHAR(20),
    module VARCHAR(20)
);

INSERT INTO Tests VALUES (301,'Internal','2025-01-25','HR',100,40,'2 hrs','Module 1');

-----------------------------------------------------

CREATE TABLE Library (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(50),
    publisher VARCHAR(50),
    year INT,
    category VARCHAR(50),
    price DECIMAL(10,2),
    available BOOLEAN
);

INSERT INTO Library VALUES (401,'HR Basics','Kumar','Oxford',2019,'Management',500,TRUE);