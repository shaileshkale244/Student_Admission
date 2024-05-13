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
