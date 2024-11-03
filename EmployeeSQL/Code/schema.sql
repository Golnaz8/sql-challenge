-- Drop all tables if exist
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;

-- Create all tables
CREATE TABLE departments (
    dept_no VARCHAR(30) PRIMARY KEY,
    dept_name VARCHAR(255) NOT NULL
);

CREATE TABLE titles (
    title_id VARCHAR(10) PRIMARY KEY,
    title VARCHAR(30) NOT NULL
);

CREATE TABLE employee (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(10) REFERENCES titles(title_id),
    birth_date TEXT NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    sex VARCHAR(10) NOT NULL,
    hire_date TEXT NOT NULL
);

CREATE TABLE dept_emp (
    emp_no INT REFERENCES employee(emp_no),
    dept_no VARCHAR(30) REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(30) REFERENCES departments(dept_no),
    emp_no INT REFERENCES employee(emp_no),
    PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE salaries (
    emp_no INT REFERENCES employee(emp_no),
    salary INT NOT NULL,
    PRIMARY KEY (emp_no)
);
