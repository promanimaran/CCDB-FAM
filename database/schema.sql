DROP DATABASE IF EXISTS centralizedcollegedb;
CREATE DATABASE centralizedcollegedb;
USE centralizedcollegedb;

-- 1. DEPARTMENT
CREATE TABLE Department (
    DEPT_ID INT PRIMARY KEY,
    DEPT_NAME VARCHAR(100) NOT NULL,
    HOD_NAME VARCHAR(100)
);

-- 2. STUDENT (Relationship: Belongs To)
CREATE TABLE Student (
    STU_ID INT PRIMARY KEY,
    STU_NAME VARCHAR(100) NOT NULL,
    STU_DOB DATE,
    STU_GENDER VARCHAR(10),
    DEPT_ID INT,
    FOREIGN KEY (DEPT_ID) REFERENCES Department(DEPT_ID) ON DELETE CASCADE
);

-- 3. STAFF (Relationship: Works In)
CREATE TABLE Staff (
    STAFF_ID INT PRIMARY KEY,
    NAME VARCHAR(100) NOT NULL,
    QUALIFICATION VARCHAR(100),
    DEPT_ID INT,
    FOREIGN KEY (DEPT_ID) REFERENCES Department(DEPT_ID) ON DELETE CASCADE
);

-- 4. COURSE (Relationship: Offers)
CREATE TABLE Course (
    COURSE_ID INT PRIMARY KEY,
    COURSE_NAME VARCHAR(100) NOT NULL,
    CREDITS INT,
    DEPT_ID INT,
    FOREIGN KEY (DEPT_ID) REFERENCES Department(DEPT_ID) ON DELETE CASCADE
);

-- 5. MARKS (Relationship: Records Performance)
CREATE TABLE Marks (
    STU_ID INT,
    CORS_ID INT,
    CORS_MARKS INT,
    CORS_GRADE VARCHAR(2),
    PRIMARY KEY (STU_ID, CORS_ID),
    FOREIGN KEY (STU_ID) REFERENCES Student(STU_ID) ON DELETE CASCADE,
    FOREIGN KEY (CORS_ID) REFERENCES Course(COURSE_ID) ON DELETE CASCADE
);

-- PRE-LOADING DATA FOR THE "SUPER" LOOK
INSERT INTO Department VALUES 
(1, 'Computer Science (CSE)', 'Dr. Arul'), 
(2, 'Electronics & Comm (ECE)', 'Dr. Kumar'),
(3, 'Electrical & Electronics (EEE)', 'Dr. Priya'),
(4, 'Mechanical Engineering (MECH)', 'Dr. Selvan'),
(5, 'Information Technology (IT)', 'Dr. Deepa');