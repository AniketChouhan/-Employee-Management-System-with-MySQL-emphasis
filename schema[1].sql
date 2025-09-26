-- schema.sql
-- Database Schema for Employee Management System

-- Create Database
CREATE DATABASE IF NOT EXISTS Employee_Management_System;
USE Employee_Management_System;

-- Table 1: JobDepartment
CREATE TABLE IF NOT EXISTS JobDepartment (
    Job_ID INT PRIMARY KEY,
    jobdept VARCHAR(50),
    name VARCHAR(100),
    description TEXT,
    salaryrange VARCHAR(50)
);

-- Table 2: SalaryBonus
CREATE TABLE IF NOT EXISTS SalaryBonus (
    salary_ID INT PRIMARY KEY,
    Job_ID INT,
    amount DECIMAL(10,2),
    annual DECIMAL(10,2),
    bonus DECIMAL(10,2),
    CONSTRAINT fk_salary_job FOREIGN KEY (Job_ID) REFERENCES JobDepartment(Job_ID)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- Table 3: Employee
CREATE TABLE IF NOT EXISTS Employee (
    emp_ID INT PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    address VARCHAR(255),
    emp_email VARCHAR(100) UNIQUE,
    password VARCHAR(50),
    Job_ID INT,
    CONSTRAINT fk_emp_job FOREIGN KEY (Job_ID) REFERENCES JobDepartment(Job_ID)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- Table 4: Qualification
CREATE TABLE IF NOT EXISTS Qualification (
    Q_ID INT PRIMARY KEY,
    Emp_ID INT,
    qualification VARCHAR(100),
    jobreq VARCHAR(100),
    jobtitle VARCHAR(100),
    CONSTRAINT fk_qual_emp FOREIGN KEY (Emp_ID) REFERENCES Employee(emp_ID)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- Table 5: Leaves
CREATE TABLE IF NOT EXISTS Leaves (
    L_ID INT PRIMARY KEY,
    Emp_ID INT,
    Leavestype VARCHAR(50),
    fromdate DATE,
    todate DATE,
    reason TEXT,
    CONSTRAINT fk_leave_emp FOREIGN KEY (Emp_ID) REFERENCES Employee(emp_ID)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- Table 6: Payroll
CREATE TABLE IF NOT EXISTS Payroll (
    P_ID INT PRIMARY KEY,
    Emp_ID INT,
    Job_ID INT,
    Salary_ID INT,
    Leave_ID INT,
    CONSTRAINT fk_pay_emp FOREIGN KEY (Emp_ID) REFERENCES Employee(emp_ID),
    CONSTRAINT fk_pay_job FOREIGN KEY (Job_ID) REFERENCES JobDepartment(Job_ID),
    CONSTRAINT fk_pay_salary FOREIGN KEY (Salary_ID) REFERENCES SalaryBonus(salary_ID),
    CONSTRAINT fk_pay_leave FOREIGN KEY (Leave_ID) REFERENCES Leaves(L_ID)
);
