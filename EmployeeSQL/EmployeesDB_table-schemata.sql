-- Self written SQL code for table schemata

DROP TABLE IF EXISTS departments CASCADE
DROP TABLE IF EXISTS dept_emp CASCADE
DROP TABLE IF EXISTS dept_manager CASCADE
DROP TABLE IF EXISTS employees CASCADE
DROP TABLE IF EXISTS salaries CASCADE
DROP TABLE IF EXISTS titles CASCADE

CREATE TABLE departments (
dept_no VARCHAR PRIMARY KEY,
dept_name VARCHAR
);

CREATE TABLE employees (
emp_no INTEGER PRIMARY KEY,
birth_date DATE,
first_name VARCHAR,
last_name VARCHAR,
gender VARCHAR,
hire_date DATE
);

CREATE TABLE dept_emp (
emp_no INTEGER,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
dept_no VARCHAR,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
from_date DATE,
to_date DATE
);

CREATE TABLE dept_manager(
dept_no VARCHAR,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
emp_no INTEGER PRIMARY KEY,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
from_date DATE,
to_date DATE
);

CREATE TABLE salaries(
emp_no INTEGER PRIMARY KEY,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
salary INTEGER,
from_date DATE,
to_date DATE
);

CREATE TABLE titles(
emp_no INTEGER,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
title VARCHAR,
from_date DATE,
to_date DATE
);