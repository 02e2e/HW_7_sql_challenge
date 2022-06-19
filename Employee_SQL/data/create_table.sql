-- Drop table if exists
DROP TABLE IF EXISTS employees;

DROP TABLE IF EXISTS salaries;

--Create new tables to import data
CREATE TABLE employees (
	emp_no	INT PRIMARY KEY,
	emp_title TEXT NOT NULL, 
	birth_data DATE NOT NULL, 
    first_name VARCHAR (30), 
    last_name VARCHAR (30),
	sex VARCHAR(10),
    hire_date DATE NOT NULL
	
);

CREATE TABLE salaries (
	emp_no INT PRIMARY KEY,
	salary INT
);

-- Import data from mys_road_accidents.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM employees;

-- Import data from mys_accidents_by_state.csv
-- View the table to ensure all data has been imported correctly
SELECT * FROM salaries;


--Do an inner join on emp_no for both tables 
SELECT employees.emp_no, employees.birth_data, employees.first_name, employees.last_name, employees.sex, employees.hire_date, salaries.salary
FROM employees
INNER JOIN salaries ON 
employees.emp_no = salaries.emp_no; 

-- 1. list the following details of each employee: employee number, last name, first name, sex, and salary 

SELECT employees.first_name, employees.last_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON 
employees.emp_no = salaries.emp_no; 


-- 2. List the manager of each dept. with the following info: manager emp_no, last_name, first_name 

