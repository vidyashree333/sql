CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    head VARCHAR(50),
    building VARCHAR(50),
    budget DECIMAL(10,2)
);

INSERT INTO Departments VALUES (1,'Computer Science','Dr. Kumar','Block A',500000);