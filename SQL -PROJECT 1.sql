create database employee;

use employee;

create table Departments(
department_id INT,
department_name VARCHAR(100)
);

create table Location(
location_id INT PRIMARY KEY,
location VARCHAR(30)
);

create table Employees (
employee_id INT,
employee_name VARCHAR(50),
gender ENUM("M", "F"),
age INT,
hire_date DATE,
designation VARCHAR(100),
department_id INT,
location_id INT,
salary DECIMAL(10,2)
);

select * from Departments;

select * from Location;

select * from Employees;

ALTER TABLE Employees
ADD email VARCHAR(100);

ALTER TABLE Employees
MODIFY COLUMN designation VARCHAR(200);

ALTER TABLE Employees
DROP COLUMN  age;

RENAME TABLE Departments to Department_info;

RENAME TABLE Location to Locations;

TRUNCATE TABLE Employees;

DROP TABLE Employees;

DROP DATABASE employee;

CREATE DATABASE IF NOT EXISTS employee;
USE employee;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(30)
);

CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M', 'F')
);


ALTER TABLE employees
ADD COLUMN age INT CHECK (age >= 18);

ALTER TABLE employees
ADD COLUMN hire_date DATE DEFAULT (CURRENT_DATE);
