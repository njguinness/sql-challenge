Create Table if NOT EXISTS departments (
	dept_no VARCHAR(10) Primary Key Not Null,
	dept_name VARCHAR(50) Not Null
);

copy departments (dept_no, dept_name) FROM 'c:/users/loutz/repo/sql-challenge/starter_code/data/departments.csv' DELIMITER ',' CSV HEADER;

Create Table if NOT EXISTS titles (
	title_id VARCHAR(10) PRIMARY KEY NOT NULL,
	title_name VARCHAR(30) Not Null
);

copy titles (title_id , title_name)
from 'c:/users/loutz/repo/sql-challenge/starter_code/data/titles.csv'
DELIMITER ','
csv header;

Create Table if NOT EXISTS employees (
 emp_no INT PRIMARY KEY NOT NULL,
  emp_title_id VARCHAR(10) references titles(title_id),
	birth_date DATE, 
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	sex VARCHAR(5),
	hire_date DATE
);

copy employees (emp_no , emp_title_id , birth_date, first_name , last_name , sex , hire_date )
from 'c:/users/loutz/repo/sql-challenge/starter_code/data/employees.csv'
DELIMITER ','
csv header ;

Create Table if NOT EXISTS dept_emp (
	emp_no INT references employees(emp_no),
  	dept_no VARCHAR(10) references departments(dept_no)
);

COPY dept_emp (emp_no, dept_no)
FROM 'c:/users/loutz/repo/sql-challenge/starter_code/data/dept_emp.csv'
DELIMITER ','
CSV HEADER;

Create Table if NOT EXISTS dept_manager (
	dept_no VARCHAR(10) references departments(dept_no),
  	emp_no INT references employees(emp_no)
);

copy dept_manager (dept_no , emp_no)
from 'c:/users/loutz/repo/sql-challenge/starter_code/data/dept_manager.csv'
DELIMITER ','
csv header;

CREATE TABLE if not exists salaries (
  emp_no INT references employees(emp_no),
  salary INT
);

copy salaries (emp_no , salary)
from 'c:/users/loutz/repo/sql-challenge/starter_code/data/salaries.csv'
DELIMITER ','
csv header;

