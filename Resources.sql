CREATE DATABASE InstituteDB;
USE InstituteDB;

-- Table 1: Learners
CREATE TABLE Learners (
    learner_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    email VARCHAR(100),
    phone VARCHAR(15),
    city VARCHAR(50),
    program VARCHAR(50)
);

INSERT INTO Learners VALUES 
(1,'Kiran',21,'Male','kiran@gmail.com','9876541111','Mandya','BBA');

-----------------------------------------------------

-- Table 2: Trainers
CREATE TABLE Trainers (
    trainer_id INT PRIMARY KEY,
    name VARCHAR(50),
    specialization VARCHAR(50),
    experience INT,
    email VARCHAR(100),
    phone VARCHAR(15),
    salary DECIMAL(10,2),
    department VARCHAR(50)
);

INSERT INTO Trainers VALUES 
(101,'Suma','Management',7,'suma@gmail.com','9876502222',45000,'Commerce');

-----------------------------------------------------

-- Table 3: Programs
CREATE TABLE Programs (
    program_id INT PRIMARY KEY,
    program_name VARCHAR(50),
    duration VARCHAR(20),
    fees DECIMAL(10,2),
    department VARCHAR(50),
    level VARCHAR(20),
    start_date DATE,
    coordinator VARCHAR(50)
);

INSERT INTO Programs VALUES 
(201,'BBA','3 Years',70000,'Commerce','UG','2024-07-01','Suma');

-----------------------------------------------------

-- Table 4: Assessments
CREATE TABLE Assessments (
    assessment_id INT PRIMARY KEY,
    assessment_name VARCHAR(50),
    date DATE,
    subject VARCHAR(50),
    total_marks INT,
    passing_marks INT,
    duration VARCHAR(20),
    module VARCHAR(20)
);

INSERT INTO Assessments VALUES 
(301,'Internal Test','2025-03-05','Management',100,40,'2 hours','Module 1');

-----------------------------------------------------

-- Table 5: Resources
CREATE TABLE Resources (
    resource_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(50),
    publisher VARCHAR(50),
    year INT,
    category VARCHAR(50),
    cost DECIMAL(10,2),
    available BOOLEAN
);

INSERT INTO Resources VALUES 
(401,'Management Guide','Ravi Kumar','McGraw Hill',2021,'Education',550,TRUE);