create table departments (
	dept_no varchar(4) primary key,
	dept_name text not null
);

create table titles(
	title_id varchar(5) primary key,
	title text not null
);

create table employees(
	emp_no int primary key,
		emp_title_id varchar(5) not null,
	birth_date date not null,
	first_name text not null,
	last_name text not null,
	sex varchar(1) not null,
	hire_date date not null,
	constraint fk_emp_title_id foreign key (emp_title_id) references titles(title_id)
);

create table dept_manager(
	dept_no varchar(4) not null,
	emp_no int not null,
	constraint fk_dept_no foreign key (dept_no) references departments(dept_no),
	constraint fk_emp_no foreign key (emp_no) references employees(emp_no)
);

create table dept_emp(
	emp_no int not null,
	dept_no varchar(5) not null,
	constraint fk_dept_no foreign key (dept_no) references departments(dept_no),
	constraint fk_emp_no foreign key (emp_no) references employees(emp_no)	
);

create table salaries (
	emp_no int not null,
	salary int not null,
	constraint fk_emp_no foreign key (emp_no) references employees(emp_no)
);