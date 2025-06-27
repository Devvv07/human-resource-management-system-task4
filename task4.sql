# Human Resource management system database

#### Task 4 ####
use hrms;
#Employees Table --
#manager Table --
#department table --
#leave_request table --
#job Table --

#Aggregate Functions ---

select sum(salary) as employees_salary from employees;

select avg(salary) as manager_salary from manager;

select count(job_id) as Total_job from job;

select max(salary) as high_paid_employee from employees;

select min(salary) as lowest_salary from manager;

#Group By clause ---

select location,sum(salary) from manager group by location;

select dept_id,count(req_id) from leave_request group by dept_id;

select dept_id,avg(salary) from employees group by dept_id;

select gender,max(salary) from employees group by gender;

select gender,min(salary) from manager group by gender;

#Group By clause using having clause ---

select location,status,count(req_id) from leave_request group by location,status having status="Approve";

select location,sum(salary) from manager group by location having location="mumbai";

select location,avg(req_id) from leave_request group by location having location="banglore";

select gender,max(salary) from employees group by gender having gender="male";

select dept_id,gender,min(emp_id) from employees group by dept_id,gender having gender="male";

commit;