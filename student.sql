create database student_admission;
use student_admission;

-- Create Courses table
CREATE TABLE Courses (
    cid INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) UNIQUE,
    start_date DATE,
    end_date DATE,
    fees DECIMAL(10, 2),
    schedule ENUM('WEEKDAY', 'WEEKEND', 'DAILY'),
    capacity INT
);

-- Create Students table
CREATE TABLE Students (
    sid INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(100),
    address VARCHAR(255),
    marks_obtained_in_entrance_exam DECIMAL(5, 2)
);

-- Create Admissions table
CREATE TABLE Admissions (
    id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    application_date DATE,
    admission_status ENUM('applied', 'accepted', 'rejected', 'waitlisted'),
    constraint fk_sid FOREIGN KEY (student_id) REFERENCES Students(sid),
    constraint fk_cid FOREIGN KEY (course_id) REFERENCES Courses(cid)
);

-- Insert data into Courses table
INSERT INTO Courses (title, start_date, end_date, fees, schedule, capacity)
VALUES 
    ('English Literature', '2024-09-01', '2024-12-15', 800.00, 'weekday', 25),
    ('Mathematics Basics', '2024-09-01', '2024-12-15', 850.00, 'weekday', 30),
    ('Art History', '2024-09-01', '2024-12-15', 750.00, 'weekend', 20),
    ('Introduction to Physics', '2024-09-01', '2024-12-15', 900.00, 'weekday', 30),
    ('Digital Marketing Fundamentals', '2024-09-01', '2024-12-15', 1000.00, 'weekend', 25),
    ('Introduction to Psychology', '2024-09-01', '2024-12-15', 850.00, 'daily', 35),
    ('Business Administration', '2024-09-01', '2024-12-15', 1200.00, 'weekday', 40);

-- Insert data into Students table
INSERT INTO Students (first_name, last_name, email, password, address, marks_obtained_in_entrance_exam)
VALUES 
    ('Alice', 'Johnson', 'alice.johnson@example.com', 'pass123', '789 Pine St, Parkville', 88.5),
    ('Bob', 'Williams', 'bob.williams@example.com', 'pass456', '456 Cedar St, Townsville', 75.0),
    ('Eva', 'Brown', 'eva.brown@example.com', 'testpass', '123 Oak St, Villageton', 95.2),
    ('David', 'Miller', 'david.miller@example.com', 'password1', '567 Maple St, Cityville', 82.5),
    ('Sophia', 'Davis', 'sophia.davis@example.com', 'password2', '890 Elm St, Townsville', 79.8),
    ('Oliver', 'Garcia', 'oliver.garcia@example.com', 'password3', '345 Birch St, Villageton', 91.0),
    ('Emma', 'Martinez', 'emma.martinez@example.com', 'password4', '678 Walnut St, Cityville', 86.3);

-- Insert data into Admissions table
INSERT INTO Admissions (student_id, course_id, application_date, admission_status)
VALUES 
    (1, 1, '2024-07-15', 'accepted'),
    (2, 3, '2024-08-20', 'rejected'),
    (3, 5, '2024-09-10', 'waitlisted'),
    (4, 2, '2024-09-15', 'accepted'),
    (5, 4, '2024-10-01', 'rejected'),
    (6, 6, '2024-10-10', 'accepted'),
    (7, 7, '2024-10-20', 'waitlisted');




