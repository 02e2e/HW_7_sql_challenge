

---3rd Iteration ________________________________________
 

-- Drop table if exists
DROP TABLE IF EXISTS employees;


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
-- Import data 
-- View the table to ensure all data has been imported correctly
SELECT * FROM employees;


DROP TABLE IF EXISTS departments; 

CREATE TABLE departments ( 
    dept_no TEXT PRIMARY KEY, 
    dept_name VARCHAR (30) NOT NULL
);
-- Import data 
-- View the table to ensure all data has been imported correctly
SELECT * FROM departments; 

DROP TABLE IF EXISTS dept_emp;

CREATE TABLE dept_emp (
    emp_no	INT NOT NULL,
	dept_no TEXT NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
-- Import data 
-- View the table to ensure all data has been imported correctly
SELECT * FROM dept_emp; 

DROP TABLE IF EXISTS dept_manager;

CREATE TABLE dept_manager (
	dept_no TEXT NOT NULL, 
    emp_no INT NOT NULL, 
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
-- Import data 
--View the table to ensure all data has been imported correctly
SELECT * FROM dept_manager

DROP TABLE IF EXISTS salaries;

CREATE TABLE salaries (
	emp_no INT NOT NULL,
	salary INT,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
-- Import data 
-- View the table to ensure all data has been imported correctly
SELECT * FROM salaries;

DROP TABLE IF EXISTS titles;

CREATE TABLE titles (
	title_id VARCHAR(30) PRIMARY KEY ,
	title TEXT NOT NULL
);
-- Import data 
-- View the table to ensure all data has been imported correctly
SELECT * FROM titles;








