-- Insert data into departments table
INSERT INTO departments (dept_no, dept_name) VALUES
    ('d001', 'Marketing'),
    ('d002', 'Finance'),
    ('d003', 'Human Resources'),
    ('d004', 'Production'),
    ('d005', 'Development'),
    ('d006', 'Quality Management'),
    ('d007', 'Sales'),
    ('d008', 'Research'),
    ('d009', 'Customer Service');

-- Insert data into titles table
INSERT INTO titles (title_id, title) VALUES
    ('s0001', 'Staff'),
    ('s0002', 'Senior Staff'),
    ('e0001', 'Assistant Engineer'),
    ('e0002', 'Engineer'),
    ('e0003', 'Senior Engineer'),
    ('e0004', 'Technique Leader'),
    ('m0001', 'Manager');

-- Copy data into employee table / because the csv file is huge and I could not INSERT INTO myself: Golnaz
COPY employee (emp_no, emp_title_id, birth_date, first_name, last_name, sex, hire_date)
FROM 'C:/Users/gbere/data-bootcamp/sql-challenge/EmployeeSQL/Resources/employee.csv'
DELIMITER ',' 
CSV HEADER;

-- Copy data into dept_emp table / because the csv file is huge and I could not INSERT INTO myself: Golnaz
COPY dept_emp (emp_no, dept_no)
FROM 'C:/Users/gbere/data-bootcamp/sql-challenge/EmployeeSQL/Resources/dept_emp.csv'
DELIMITER ',' 
CSV HEADER;

-- Insert data into dept_manager table
INSERT INTO dept_manager (dept_no, emp_no) VALUES
    ('d001', 110022),
    ('d001', 110039),
    ('d002', 110085),
    ('d002', 110114),
    ('d003', 110183),
    ('d003', 110228),
    ('d004', 110303),
    ('d004', 110344),
    ('d004', 110386),
    ('d004', 110420),
    ('d005', 110511),
    ('d005', 110567),
    ('d006', 110725),
    ('d006', 110765),
    ('d006', 110800),
    ('d006', 110854),
    ('d007', 111035),
    ('d007', 111133),
    ('d008', 111400),
    ('d008', 111534),
    ('d009', 111692),
    ('d009', 111784),
    ('d009', 111877),
    ('d009', 111939);

-- Copy data into salaries table / because the csv file is huge and I could not INSERT INTO myself: Golnaz
COPY salaries (emp_no, salary)
FROM 'C:/Users/gbere/data-bootcamp/sql-challenge/EmployeeSQL/Resources/salaries.csv'
DELIMITER ',' 
CSV HEADER;
