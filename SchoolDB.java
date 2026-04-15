CREATE DATABASE SchoolDB;
USE SchoolDB;

-- Table 1: Pupils
CREATE TABLE Pupils (
    pupil_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    email VARCHAR(100),
    phone VARCHAR(15),
    address VARCHAR(150),
    grade VARCHAR(20)
);

INSERT INTO Pupils VALUES 
(1,'Arjun',15,'Male','arjun@gmail.com','9876543210','Mysore','10th');

-----------------------------------------------------

-- Table 2: Instructors
CREATE TABLE Instructors (
    instructor_id INT PRIMARY KEY,
    name VARCHAR(50),
    subject VARCHAR(50),
    experience INT,
    email VARCHAR(100),
    phone VARCHAR(15),
    salary DECIMAL(10,2),
    department VARCHAR(50)
);

INSERT INTO Instructors VALUES 
(101,'Meena','Science',8,'meena@gmail.com','9876500001',40000,'Science');

-----------------------------------------------------

-- Table 3: Subjects
CREATE TABLE Subjects (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(50),
    code VARCHAR(20),
    credits INT,
    department VARCHAR(50),
    level VARCHAR(20),
    duration VARCHAR(20),
    teacher_name VARCHAR(50)
);

INSERT INTO Subjects VALUES 
(201,'Physics','PHY101',4,'Science','High','1 Year','Meena');

-----------------------------------------------------

-- Table 4: Tests
CREATE TABLE Tests (
    test_id INT PRIMARY KEY,
    test_name VARCHAR(50),
    date DATE,
    subject VARCHAR(50),
    total_marks INT,
    passing_marks INT,
    duration VARCHAR(20),
    term VARCHAR(20)
);

INSERT INTO Tests VALUES 
(301,'Unit Test','2025-02-15','Physics',100,35,'2 hours','Term 1');

-----------------------------------------------------

-- Table 5: Books
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(50),
    publisher VARCHAR(50),
    year INT,
    category VARCHAR(50),
    price DECIMAL(10,2),
    availability BOOLEAN
);

INSERT INTO Books VALUES 
(401,'Physics Basics','R.K. Sharma','Oxford',2019,'Education',450,TRUE);