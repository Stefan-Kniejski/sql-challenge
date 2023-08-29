-- question 1

select
	a.emp_no,
	a.last_name,
	a.first_name,
	a.sex,
	b.salary
from employees as a
left join salaries as b on b.emp_no = a.emp_no;

--question 2

select first_name, 
	last_name, 
	hire_date
from employees
where date_part('year', hire_date) = 1986;

--question 3

SELECT dept_manager.dept_no
    , departments.dept_name
    , dept_manager.emp_no
    , employees.first_name
    , employees.last_name
FROM dept_manager
INNER JOIN departments ON
    dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON
    dept_manager.emp_no = employees.emp_no;
	
-- question 4

SELECT dept_emp.dept_no,
    dept_emp.emp_no,
    employees.last_name,
    employees.first_name,
    departments.dept_name
FROM dept_emp
INNER JOIN employees ON
    dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON
    dept_emp.dept_no = departments.dept_no;
	
--question 5

SELECT first_name,
    last_name,
    sex
FROM employees
WHERE first_name = 'Hercules'
    AND last_name LIKE 'B%';

--question 6

SELECT employees.emp_no
    , employees.last_name
    , employees.first_name
FROM employees
INNER JOIN dept_emp ON
    employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON
    departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales';
	
--question 7

SELECT employees.emp_no,
    employees.last_name,
    employees.first_name,
    departments.dept_name
FROM employees
INNER JOIN dept_emp ON
    employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON
    departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name IN ('Sales', 'Development');

--question 8

SELECT last_name,
    count(last_name)
FROM employees
GROUP BY last_name
ORDER BY count(last_name) DESC;
