create table projects (
project_id int primary key,
project_name varchar,
owner_emp_id int,
start_date date,
end_date date,
status varchar,
description text,
priority varchar,
team_size int,
client_id int
);
--SELECT 
-- 1. Select all project data
select * from projects;

-- 2. List project names and their owners
select project_name,owner_emp_id from projects;

-- 3. Find all projects with status 'Ongoing'
select * from projects where status = 'Ongoing';

-- 4. Projects that started in 2023
select * from projects where start_date > '2023-01-01';

-- 5. Get completed projects
select * from projects where status = 'Completed';

-- 6. Projects with high priority
select * from projects where priority = 'High';

-- 7. List all unique statuses
select distinct status from projects;

-- 8. Count number of projects per priority
select priority, count(*) from projects group by priority;

-- 9. Projects without an end date
select * from projects where end_date is null;

-- 10. Order projects by team size descending
select * from projects order by team_size desc;

-- 11. Find all projects with team size greater than 3
select project_name from projects where team_size > 3;

-- 12. List project names that belong to employee ID 5
select project_name from projects where owner_emp_id = 5;

-- 13. Get all projects with description containing 'portal'
select project_name from projects where description ilike '%portal%';

-- 14. Count ongoing projects by team size
select count(*) from projects where status = 'Ongoing';

-- 15. Projects assigned to client ID 2
select project_name from projects where client_id = 2;

--UPDATE 
-- 1. Change status of 'ChatBot AI' to 'Ongoing'
update projects set status = 'Ongoing' where project_name = 'ChatBot AI';

-- 2. Update end date for 'CRM Revamp'
update projects set end_date = '2024-07-15' where project_name = 'CRM Revamp';

-- 3. Change priority to 'Medium' for 'Cyber Security Upgrade'
update projects set priority = 'Medium' where project_name = 'Cyber Security Upgrade';

-- 4. Update team size for 'Salesforce Integration' to 6
update projects set team_size = 6 where project_name = 'Salesforce Integration';


-- 5. Rename project 'Apollo App' to 'Apollo Client App'
update projects set project_name = 'Apollo Client App' where project_name = 'Apollo App';

-- 6. Set status to 'Ongoing' for all projects with no end date

select * from projects;
-- 7. Add 2 team members to every project with more than 4 members
update projects set team_size = team_size +2 where team_size >4;

-- 8. Change owner of 'Internal Wiki Setup' to employee ID 10
update projects set owner_emp_id = 10 where project_name = 'Internal Wiki Setup';

-- 9. Set end date to current date for completed projects missing end_date
update projects set end_date = current_date where status = 'Completed' and end_date is null;

-- 10. Replace 'AI' with 'ML' in project descriptions
update projects set description = replace(description,'AI','ML');

-- 11. Update client ID of 'Analytics Dashboard' to 5
update projects set client_id = 5 where project_name = 'Analytics Dashboard';

-- 12. Update all 'Planning' projects to 'Ongoing'
update projects set status = 'Ongoing' where status = 'Planning';

-- 13. Set all team sizes below 2 to minimum 2
update projects set team_size = 2 where team_size < 2;

-- 14. Change priority of 'Onboarding Portal' to 'Medium'
update projects set priority = 'Medium' where project_name = 'Onboarding Portal';

-- 15. Change status to 'Archived' for completed projects
update projects set status = 'Archived' where Status = 'Completed';

--DELETE
-- 1. Delete project with project_id = 11
delete from projects where project_id = 11;

-- 2. Delete projects with status = 'Planning'
delete from projects where status = 'Planning';

-- 3. Delete projects with priority = 'Low'
delete from projects where priority = 'Low';

-- 4. Delete all completed projects
delete from projects where status = 'Completed';

-- 5. Delete projects that ended before 2023
delete from projects where end_date < '2023-01-01'

-- 6. Delete projects owned by employee ID 3
delete from projects where owner_emp_id = 3;

-- 7. Delete projects with NULL end date
delete from projects where end_date is null;

-- 8. Delete projects with team size < 3
delete from projects where team_size <3;

-- 9. Delete projects with client_id = 1
delete from projects where client_id = 1;

-- 10. Delete project named 'Payroll System'
delete from projects where project_name = 'Payroll System';

-- 11. Delete all ML-related projects
delete from projects where description ilike '%ML%';

-- 12. Delete projects with duplicate owner IDs


-- 13. Delete ongoing projects with team size > 5
delete from projects where status = 'Ongoing' and team_size >5;

-- 14. Delete projects from client ID 4
delete from projects where client_id = 4;

-- 15. Delete all projects from 2022
delete from projects where start_date between '2020-01-01' and '2020-12-31';

select * from projects;
-- Table contains only one row data because of several delete operations are performed