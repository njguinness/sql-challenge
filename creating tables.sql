Create Table if NOT EXISTS departments (
	dept_no VARCHAR(10) Primary Key Not Null,
	dept_name VARCHAR(50) Not Null
);

copy departments (dept_no, dept_name) FROM 'c:/users/loutz/repo/sql-challenge/starter_code/data/departments.csv' DELIMITER ',' CSV HEADER;

Create Table if NOT EXISTS dept_emp (
	emp_no VARCHAR(10) Primary Key Not Null , 
	dept_no VARCHAR(40) Not Null
	);


COPY dept_emp (emp_no, dept_no)
FROM 'c:/users/loutz/repo/sql-challenge/starter_code/data/dept_emp.csv'
DELIMITER ','
CSV HEADER;

create table if not exists dept_manager (
	dept_no VARCHAR(50) ,
	emp_no VARCHAR(50)
);
copy dept_manager (dept_no , emp_no)
from 'c:/users/loutz/repo/sql-challenge/starter_code/data/dept_manager.csv'
DELIMITER ','
csv header;

create table if not exists employees (
	emp_no INT Primary Key Not Null,
	emp_title_id VARCHAR(50),
	birth_date DATE,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	sex VARCHAR(10),
	hire_date DATE
);

copy employees (emp_no , emp_title_id , birth_date, first_name , last_name , sex , hire_date )
from 'c:/users/loutz/repo/sql-challenge/starter_code/data/employees.csv'
DELIMITER ','
csv header ;

create table if not exists salaries (
	emp_no VARCHAR(50),
	salary INT
);

copy salaries (emp_no , salary)
from 'c:/users/loutz/repo/sql-challenge/starter_code/data/salaries.csv'
DELIMITER ','
csv header;


create table if not exists titles (
	title_id VARCHAR(10) Primary Key Not Null,
	title_name VARCHAR(30) Not Null
);

copy titles (title_id , title_name)
from 'c:/users/loutz/repo/sql-challenge/starter_code/data/titles.csv'
DELIMITER ','
csv header;