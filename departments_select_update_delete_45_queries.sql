create table departments (
dept_id int primary key,
dept_name text,
location text,
employee_count int,
status text,
dept_type text,
description text,
division_id int,
head_email text,
established_date date
);

--SELECT
-- 1. Select all departments
select * from departments;

-- 2. List department names and their heads
select dept_name, head_email from departments;

-- 3. Departments located in Delhi
select * from departments where location = 'Delhi';

-- 4. Departments with status 'hiring'
select * from departments where status = 'hiring';

-- 5. Count departments by location
select location, count(*) from departments group by location;

-- 6. Departments established after 2021
select * from departments where established_date > '2021-01-01';

-- 7. Departments with more than 20 employees
select * from departments where employee_count > 20;

-- 8. Get all Core departments
select * from departments where dept_type = 'Core';

-- 9. List distinct department statuses
select distinct status from departments;

-- 10. Order departments by employee count (descending)
select * from departments order by employee_count desc;

-- 11. Get departments in division 2 or 3
select * from departments where division_id = 2 or division_id = 3;

-- 12. Count total number of Support departments
select count(*) from departments where dept_type = 'Support';

-- 13. Departments with 'management' in the description
select * from departments where description ilike '%manage%';

-- 14. List departments and how long they’ve been established
select dept_name, current_date - established_date as total_days from departments;

-- 15. Departments with open status and Core type
select * from departments where status = 'open' and dept_type = 'Core';

--UPDATE
-- 1. Change status of 'Support' department to 'open'
update departments set status = 'open' where dept_type = 'Support';

-- 2. Update head of the QA department
update departments set head_email = 'quality.lead@company.com' where dept_name = 'QA';

-- 3. Increase employee count by 5 in Training department
update departments set employee_count = employee_count+5 where dept_name = 'Training';

-- 4. Change location of 'Admin' department to Gurgaon
update departments set location = 'Gurgaon' where dept_name = 'Admin';

-- 5. Set status to 'closed' for departments with <10 employees
update departments set status = 'closed' where employee_count < 10;

-- 6. Rename 'Design' department to 'UX Design'
update departments set dept_name = 'UX Design' where dept_name = 'Design';

-- 7. Update department description for Legal
update departments set description = 'Handles legal matters more' where dept_name = 'Legal';

-- 8. Promote division_id 1 departments to division 2
update departments set division_id = 2 where division_id = 1;

-- 9. Standardize email domain @company.com to @fortune.com
update departments set head_email = replace(head_email,'@company.com', '@fortune.com');

-- 10. Change dept_type to 'Admin1' for the Admin department
update departments set dept_type = 'Admin1' where dept_name = 'Admin';

-- 11. Move all departments in Delhi to Noida
update departments set location = 'Noida' where location = 'Delhi';

-- 12. Update established date of 'Finance' to 2021-01-01
update departments set established_date = '2021-01-01' where dept_name = 'Finance';

-- 13. Reduce employee count by 2 in Legal
update departments set employee_count = employee_count - 2 where dept_name = 'Legal';

-- 14. Set division_id to NULL for departments with less than 8 employees
update departments set division_id = NULL where employee_count < 8;

-- 15. Change all 'hiring' statuses to 'open'
update departments set status = 'open' where status = 'hiring';

--DELETE
-- 1. Delete department with dept_id = 12
delete from departments where dept_id = 12;

-- 2. Delete departments where employee count is less than 10
delete from departments where employee_count < 10;

-- 3. Delete departments with status = 'closed'
delete from departments where status ='closed';

-- 4. Remove departments from division 4
delete from departments where division_id = 4;

-- 5. Delete departments in Mumbai
delete from departments where location = 'Mumbai';

-- 6. Delete the Admin department
delete from departments where dept_name = 'Admin';

-- 7. Delete all departments of type 'Support'
delete from departments where dept_type = 'Support';

-- 8. Delete QA department
delete from departments where dept_name = 'QA';

-- 9. Delete departments with NULL division_id
delete from departments where division_id = NULL;

-- 10. Delete Training department
delete from departments where dept_name = 'Traning';

-- 11. Delete departments established before 2020
delete from departments where established_date < '2020-01-01';

-- 12. Delete departments with no assigned head
delete from departments where head_email is null;

-- 13. Delete departments with description containing 'campaigns'
delete from departments where description ilike '%campaigns%';

-- 14. Delete Finance department
delete from departments where dept_name = 'Finance';

-- 15. Delete departments not located in Pune
delete from departments where location = 'Pune';

select * from departments;
-- Table is empty as we performed delete operations above 