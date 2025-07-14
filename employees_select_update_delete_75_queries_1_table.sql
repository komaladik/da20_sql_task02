create table employees (
emp_id int primary key,
name text,
age int,
gender text,
position text,
joining_date date,
employment_type text,
department_id int,
location text, 
email text
);

-- SELECT

-- 1. select all employees data
select * from employees; 

-- 2. select only names and positions
select name, position from employees;

-- 3. Get employees who are developers
select * from employees where position = 'Developer';

-- 4. List employees older than 30
select * from employees where age >30;

-- 5. Employees who joined after Jan 2021
select * from employees where joining_date>'2021-01-01';

-- 6. Employees in Pune location
select * from employees where location = 'Pune';

-- 7. Count number of employees per department
select department_id, count(*) from employees group by department_id;

-- 8. List only female employees
select * from employees where gender = 'Female';

-- 9. Employees not in department 2
select * from employees  where not department_id = '2';

-- 10. Employees whose name starts with 'A'
select * from employees where name like 'A%';

-- 11. Get employees who are interns
select * from employees where position = 'Intern';

-- 12. Get employees ordered by joining date
select * from employees order by joining_date;

-- 13. Find employees in position 'Support Engineer' or 'QA Engineer'
select * from employees where position = 'Support Engineer' or position = 'QA Engineer';

-- 14. Count employees by gender
select gender, count(*) from employees group by gender;

-- 15. List employee names and emails, ordered by name
select name, email from employees order by name;

--UPDATE

select * from employees;
-- 1. Update position of Amit Kumar
select * from employees where name = 'Amit Kumar';
update employees set position = 'Data Analyst' where name = 'Amit Kumar';

-- 2. Change employment type to 'Permanent' for interns
select * from employees where position = 'Intern';
update employees set employment_type = 'Permanent' where position = 'Intern';

-- 3. Update location of employee ID 4
select * from employees where emp_id = 4;
update employees set location = 'Mumbai' where emp_id = 4;

-- 4. Change department for all developers to 3
select * from employees where position = 'Developer';
update employees set department_id = '3' where position = 'Developer';

-- 5. Update email of Priya Singh
select * from employees where name = 'Priya Singh';
update employees set email = 'singhpriya@gmail.com' where name = 'Priya Singh'; 

-- 6. Change gender from 'Male' to 'Other' for emp_id 12
select * from employees where emp_id = 12;
update employees set gender ='Other' where emp_id = 12;

-- 7. Increase age of all employees by 1
select age from employees;
update employees set age = age+1;

-- 8. Update employment_type of 'Contract' workers to 'Permanent'
update employees set employment_type = 'permanent' where employment_type = 'Contract';

-- 9. Move all employees in Noida to Delhi
select * from employees where location = 'Noida';
update employees set location = 'Delhi' where location = 'Noida';

-- 10. Change position of employee ID 6 to 'Team Lead'
update employees set position = 'Team Lead' where emp_id = 6;

-- 11. Update joining date of Anjali Patel
update employees set joining_date = '2021-01-15' where name = 'Anjali Patel';

-- 12. Set department_id to NULL for interns
update employees set department_id = NULL where position = 'Intern';

-- 13. Replace email domain from 'example.com' to 'company.com'
update employees set email = replace(email, 'example.com', 'company.com');

-- 14. Set gender to 'Not Specified' for all with NULL gender
update employees set gender = 'Not Specified' where gender = 'NULL';

-- 15. Promote all 'HR Executive' to 'HR Manager'
update employees set position = 'HR Manager' where position = 'HR Executive';

--DELETE
select * from employees;
-- 1. Delete a specific employee
delete from employees where emp_id = 7;

-- 2. Delete all interns
delete from employees where position = 'Intern';

-- 3. Delete employees in department 5
delete from employees where department_id = 5;

-- 4. Delete employees with email domain not 'company.com'
delete from employees where email not like '%company.com';

-- 5. Delete employees who joined before 2020
delete from employees where joining_date < '2020-01-01'

-- 6. Delete all employees in Hyderabad
delete from employees where location = 'Hyderabad';

-- 7. Delete employees with age less than 25
delete from employees where age < 25 ;

-- 8. Delete all 'Contract' employees
delete from employees where employment_type = 'Contract';

-- 9. Delete employees with position 'QA Engineer'
delete from employees where position = 'QA Engineer'; 

-- 10. Delete employees who are not assigned to any department
delete from employees where department_id = NULL;

-- 11. Delete employee named 'Alok Sharma'
delete from employees where name = 'Alok Sharma';

-- 12. Delete employees where gender = 'Other'
delete from employees where gender = 'Other';

-- 13. Delete employees from location 'Kolkata'
delete from employees where location = 'Kolkata';

-- 14. Delete all employees with 'Support Engineer' role
delete from employees where position = 'Support Engineer';

-- 15. Delete all employees from department 4
delete from employees where department_id = 4;