🧩 HRMS Database SQL Scripts

---

A collection of SQL scripts to manage and analyze data within a Human Resource Management System (HRMS).
This repository includes DDL and DML queries, aggregation, grouping, and filtering examples for practical HR data tasks

---

hrms-sql/
├── README.md              # This documentation
├── schema/
│   ├── employees.sql      # Employees table schema & sample data
│   ├── manager.sql        # Manager table schema & sample data
│   ├── department.sql     # Department table schema & sample data
│   ├── leave_request.sql  # Leave request table schema & sample data
│   └── job.sql            # Job table schema & sample data
└── scripts/
    ├── aggregates.sql     # Aggregate function queries
    ├── group_by.sql       # Group by queries
    └── having_clause.sql  # Group by with HAVING filter queries

---

Aggregate Functions
SELECT SUM(salary) AS employees_salary FROM employees;
SELECT AVG(salary) AS manager_salary FROM manager;
SELECT COUNT(job_id) AS Total_job FROM job;
SELECT MAX(salary) AS high_paid_employee FROM employees;
SELECT MIN(salary) AS lowest_salary FROM manager;

---

Group By Examples
SELECT location, SUM(salary) FROM manager GROUP BY location;
SELECT dept_id, COUNT(req_id) FROM leave_request GROUP BY dept_id;
SELECT dept_id, AVG(salary) FROM employees GROUP BY dept_id;
SELECT gender, MAX(salary) FROM employees GROUP BY gender;
SELECT gender, MIN(salary) FROM manager GROUP BY gender;

---

Group By + HAVING Clause
SELECT location, status, COUNT(req_id)
  FROM leave_request
  GROUP BY location, status
  HAVING status = 'Approve';

SELECT location, SUM(salary)
  FROM manager
  GROUP BY location
  HAVING location = 'mumbai';

SELECT location, AVG(req_id)
  FROM leave_request
  GROUP BY location
  HAVING location = 'banglore';

SELECT gender, MAX(salary)
  FROM employees
  GROUP BY gender
  HAVING gender = 'male';

SELECT dept_id, gender, MIN(emp_id)
  FROM employees
  GROUP BY dept_id, gender
  HAVING gender = 'male';

---

🛠 Technologies Used
MySQL 8.0

SQL (DDL, DML, Constraints)

MySQL Workbench

ER Modeling & Normalization

---

  🧑‍💻 Author
Dev Hemant Mohite

📧 Email: dev.mohite2000@gmail.com

🏫 Internship: Elevate‑lab
